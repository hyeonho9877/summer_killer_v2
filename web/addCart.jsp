<%@ page import="java.util.ArrayList" %>
<%@ page import="repository.Product" %>
<%@ page import="repository.ProductRepository" %>
<%@ page import="org.apache.taglibs.standard.lang.jstl.BooleanLiteral" %>
<%@ page import="java.util.concurrent.atomic.AtomicBoolean" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page errorPage="errPage.jsp" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    ArrayList<Product> cart = (ArrayList<Product>) session.getAttribute("cart");

    ProductRepository repository = ProductRepository.getInstance();
    Product product = repository.getProductByPid(Integer.parseInt(request.getParameter("pid")));

    boolean dup = false;
    for (Product item : cart) {
        if (item.getPid() == product.getPid()) {
            item.setQnt(item.getQnt()+1);
            dup = true;
        }
    }

    if(!dup){
        cart.add(product);
    }
    response.sendRedirect("shopping.jsp");
%>
</body>
</html>
