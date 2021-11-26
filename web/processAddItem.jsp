<%@ page import="org.apache.commons.fileupload.DiskFileUpload" %>
<%@ page import="org.apache.commons.fileupload.FileItem" %>
<%@ page import="java.util.List" %>
<%@ page import="java.io.File" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page errorPage="errPage.jsp" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%@ include file="dbConn.jsp" %>
<%
    request.setCharacterEncoding("utf-8");
    String firstPath = "C:\\Users\\61906\\Documents\\GitHub\\summer_killer_v2\\upload";

    DiskFileUpload upload = new DiskFileUpload();

    List<FileItem> items = upload.parseRequest(request);

    String insertQuery = "insert into summer_killer.product (pid, name, price, stock, sales, filepath, description, detailImage) values (?,?,?,?,?,?,?,?)";
    PreparedStatement insertPstmt = conn.prepareStatement(insertQuery);
    String name="", filepath="", description="";
    int pid = 0, price=0, stock=0, detailImage=1;
    boolean isDetail = false;

    for (FileItem item : items) {
        if (item.isFormField()) {
            String key = item.getFieldName();
            String value = item.getString("UTF-8");
            switch (key){
                case "pid":
                    pid = Integer.parseInt(value);
                    break;
                case "pname":
                    name = value;
                    break;
                case "desc":
                    description = value;
                    break;
                case "price":
                    price = Integer.parseInt(value);
                    break;
                case "stock":
                    stock = Integer.parseInt(value);
                    break;
            }
        } else {
            String fileName = item.getName();
            fileName = fileName.substring(fileName.lastIndexOf("\\") + 1);
            System.out.println(fileName);
            if(!isDetail){
                filepath = fileName;
                File file = new File(firstPath);
                if(!file.exists()) {
                    file.mkdir();
                }
                File image = new File(firstPath + "/" + fileName);
                item.write(image);
                isDetail = true;
            } else {
                File file = new File(firstPath + "/details/"+pid);
                if(!file.exists()) {
                    file.mkdirs();
                }
                File image = new File(firstPath + "/details/" + pid + "/" + detailImage++ +".jpg");
                item.write(image);
            }
        }
    }
    insertPstmt.setInt(1, pid);
    insertPstmt.setString(2, name);
    insertPstmt.setInt(3, price);
    insertPstmt.setInt(4, stock);
    insertPstmt.setInt(5, 0);
    insertPstmt.setString(6, filepath);
    insertPstmt.setString(7, description);
    insertPstmt.setInt(8, detailImage-1);

    insertPstmt.executeUpdate();

    insertPstmt.close();
    conn.close();

    response.sendRedirect("index.jsp");
%>
</body>
</html>