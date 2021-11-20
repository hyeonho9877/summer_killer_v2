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

    String username = request.getParameter("username");
    String password = request.getParameter("password");
    String firstName = request.getParameter("first_name");
    String lastName = request.getParameter("last_name");
    String address = request.getParameter("address");
    String phone = request.getParameter("phone");
    String gender = request.getParameter("gender");

    String query = "insert into user (username, password, address, phone_number, gender, name) values(?,?,?,?,?,?)";
    PreparedStatement pstmt = conn.prepareStatement(query);
    pstmt.setString(1, username);
    pstmt.setString(2, password);
    pstmt.setString(3, address);
    pstmt.setString(4, phone);
    pstmt.setString(5, gender);
    pstmt.setString(6, lastName + firstName);

    pstmt.executeUpdate();

    conn.close();
    pstmt.close();
%>
</body>
</html>
