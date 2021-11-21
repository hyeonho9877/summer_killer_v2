<%@ page import="java.util.ArrayList" %>
<%@ page import="repository.Product" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    int pid = Integer.parseInt(request.getParameter("pid"));

    ArrayList<Product> cart = (ArrayList<Product>) session.getAttribute("cart");

    cart.removeIf(product -> product.getPid() == pid);
    response.sendRedirect("cart.jsp");
%>
</body>
</html>
