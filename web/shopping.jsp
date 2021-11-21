<%@ page import="repository.Product" %>
<%@ page import="repository.ProductRepository" %>
<%@ page import="java.util.List" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=utf-8" %>
<%@ page errorPage="errPage.jsp" %>
<%@ include file="localeSetter.jsp" %>
<fmt:setLocale value='<%=language%>'/>
<html>
<head>
    <title>빠삐코 :: 구매하기</title>
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="resources/css/shopping-stylesheet.css">
    <script src="resources/js/jquery-3.5.1.min.js"></script>
    <script src="resources/js/shopping.js"></script>
    <style>
    </style>
</head>
<body>
<jsp:include page="menu.jsp"/>
<%
    ProductRepository repository = ProductRepository.getInstance();
    List<Product> products = repository.getProducts();
%>
<div class="container">
    <div class="list-title-container">
        <h1 class="list-title">상품 리스트</h1>
    </div>
    <div class="row" align="center">
        <%
            for (int i = 0; i < products.size(); i++) {
                Product product = products.get(i);
        %>
        <div class="col-md-4" id="<%=product.getPid()%>" onclick="redirectToProduct(this.id)">
            <img src="/resources/images/<%=product.getFilepath()%>" style="width: 100%">
            <h3 class="product-title"><%=product.getName()%>
            </h3>
            <p class="product-desc"><%=product.getDescription()%>
            <p class="product-price"><%=product.getPrice()%>원
        </div>
        <%
            }
        %>
    </div>
    <hr>
</div>
<div class="hidden-language">
    <a href="<%=request.getRequestURI()%>?language=ko">한국어</a> | <a href="<%=request.getRequestURI()%>?language=en">English</a>
</div>
<jsp:include page="footer.jsp"/>
</body>
</html>
