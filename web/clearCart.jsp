<%@ page import="java.util.ArrayList" %>
<%@ page import="repository.Product" %>
<%@ page errorPage="errPage.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    ArrayList<Product> cart = (ArrayList<Product>) session.getAttribute("cart");
    cart.removeAll(cart);

    response.sendRedirect("index.jsp");
%>
</body>
</html>
