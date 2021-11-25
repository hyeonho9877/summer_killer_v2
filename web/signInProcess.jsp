<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="repository.Product" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page errorPage="errPage.jsp" %>
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
            String authority = result.getString("authority");

            if (password.equals(dbPassword)) {
                session.setAttribute("cart", new ArrayList<Product>());
                session.setAttribute("authorized", true);
                session.setAttribute("username",username);
                String language = request.getParameter("language");

                if(authority.equals("admin"))
                    session.setAttribute("role","admin");

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

    conn.close();
%>
</body>
</html>
