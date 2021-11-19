<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%@ include file="dbConn.jsp" %>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");

    try {
        Statement stmt = conn.createStatement();
        String query = "select * from user where username='" + username + "'";
        ResultSet result = stmt.executeQuery(query);

        if (result.next()) {
            String dbPassword = result.getString("password");

            if (password.equals(dbPassword)) {
                session.setAttribute("authorized", true);
                session.setAttribute("username",username);
                String language = request.getParameter("language");
                response.sendRedirect("index.jsp?language=" + language);
            } else {
                String language = request.getParameter("language");
                response.sendRedirect("signin.jsp?language=" + language + "&&errcode=1");
            }
        } else {
            String language = request.getParameter("language");
            response.sendRedirect("signin.jsp?language=" + language + "&&errcode=1");
        }
    } catch (SQLException e) {
        String language = request.getParameter("language");
        response.sendRedirect("errPage.jsp?errcode=500");
    }
%>
</body>
</html>
