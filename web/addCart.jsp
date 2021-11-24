<%@ page import="java.util.ArrayList" %>
<%@ page import="repository.Product" %>
<%@ page import="repository.ProductRepository" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page errorPage="errPage.jsp" %>
<%
    String language = request.getParameter("language");

    ArrayList<Product> cart = (ArrayList<Product>) session.getAttribute("cart");

    ProductRepository repository = ProductRepository.getInstance();
    Product product = repository.getProductByPid(Integer.parseInt(request.getParameter("pid")));
    int qnt = Integer.parseInt(request.getParameter("qnt"));
    product.setQnt(qnt);

    boolean dup = false;
    for (Product item : cart) {
        if (item.getPid() == product.getPid()) {
            item.setQnt(item.getQnt()+qnt);
            dup = true;
        }
    }

    if(!dup){
        cart.add(product);
    }
    response.sendRedirect("productDetail.jsp?pid="+product.getPid()+"&language="+language);
%>