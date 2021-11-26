<%@ page import="java.sql.PreparedStatement" %>
<%@ include file="dbConn.jsp" %>
<%@ page errorPage="errPage.jsp" %>
<%

    request.setCharacterEncoding("utf-8");

    int pid = Integer.parseInt(request.getParameter("pid"));
    int productID = Integer.parseInt(request.getParameter("productID"));
    String title = request.getParameter("title");
    String text = request.getParameter("text");
    String username = (String) session.getAttribute("username");

    String insertQuery = "insert into summer_killer.review (writer, product, title, text) values(?,?,?,?)";
    String updateQuery = "update summer_killer.purchase set reviewed = true where pid=? and product_id=?";

    PreparedStatement insertPstmt = conn.prepareStatement(insertQuery);
    insertPstmt.setString(1, username);
    insertPstmt.setInt(2, productID);
    insertPstmt.setString(3, title);
    insertPstmt.setString(4, text);

    insertPstmt.executeUpdate();

    insertPstmt.close();

    PreparedStatement updatePstmt = conn.prepareStatement(updateQuery);
    updatePstmt.setInt(1, pid);
    updatePstmt.setInt(2, productID);

    updatePstmt.executeUpdate();

    updatePstmt.close();

    conn.close();

    response.sendRedirect("myPage.jsp");
%>