<%@ page import="repository.ProductRepository" %>
<%@ page import="repository.Product" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="localeSetter.jsp" %>
<%@ page errorPage="errPage.jsp" %>
<fmt:setLocale value='<%=language%>'/>
<html>
<head>
    <title>Title</title>
    <script src="resources/js/jquery-3.5.1.min.js"></script>
    <link rel="stylesheet" href="resources/css/productDetail-stylesheet.css">
</head>
<body>
<%
    ProductRepository repository = ProductRepository.getInstance();
    Product product = repository.getProductByPid(Integer.parseInt(request.getParameter("pid")));
%>
<jsp:include page="menu.jsp"/>
<div class="container">
    <div class="detail-container">
        <h1 class="title  font-4">상품 정보</h1>
    </div>
    <div class="product-info display-inline-flex">
        <div class="product-img">
            <img class="img-thumbnail" src="resources/images/<%=product.getFilepath()%>">
        </div>
        <div class="product-desc">
            <span class="product-name font-3" id="pname"><%=product.getName()%></span>
            <p class="product-desc-detail font-1half" id="desc"><%=product.getDescription()%>
            </p>
            <p class="product-price font-3"><%=product.getPrice()%> 원</p>
            <div>
                <a href="#" class="btn btn-info display-block product-link" onclick="addToCart()"> 상품 주문 &raquo;</a>
                <a href="#" class="btn btn-warning display-block product-link"> 장바구니 &raquo;</a>
            </div>
        </div>
    </div>
    <div class="detail-container">
        <h1 class="title  font-4">상세 이미지</h1>
        <div class="container">
            <%
                for (int i = 1; i <= product.getDetailImage(); i++) {

            %>
            <img src="resources/images/details/<%=product.getPid()%>/<%=i%>.jpg" class="detail-img">
            <%
                }
            %>
        </div>
    </div>

    <div class="product-review">
        <div class="detail-container">
            <h1 class="title  font-4">상품 리뷰</h1>
        </div>
    </div>
</div>
<%--<div class="jumbotron">--%>
<%--    <div class="container">--%>
<%--        <h1 class="display-3">상품 정보</h1>--%>
<%--    </div>--%>
<%--</div>--%>
<%--<%--%>
<%--    ProductRepository repository = ProductRepository.getInstance();--%>
<%--    int pid = Integer.parseInt(request.getParameter("pid"));--%>
<%--    Product product = repository.getProductByPid(pid);--%>
<%--%>--%>
<%--<div class="container">--%>
<%--    <div class="row">--%>
<%--        <div class="col-md-5">--%>
<%--            <img src="/resources/images/<%=product.getFilepath()%>" style="width: 100%">--%>
<%--        </div>--%>
<%--        <div class="col-md-6">--%>
<%--            <h3><%=product.getName()%>--%>
<%--            </h3>--%>
<%--            <p><%=product.getDescription()%>--%>
<%--            </p>--%>
<%--            <p><b>상품 코드 : </b><span class="badge badge-danger">--%>
<%--                <%=product.getPid()%>--%>
<%--            </span></p>--%>
<%--            <h4><%=product.getPrice()%>원</h4>--%>
<%--            <p>--%>
<%--            <form name="addForm" action="./addCart.jsp?id=<%=product.getPid()%>" method="post">--%>
<%--                <a href="#" class="btn btn-info" onclick="addToCart()"> 상품 주문 &raquo;</a>--%>
<%--                <a href="./cart.jsp" class="btn btn-warning"> 장바구니 &raquo;</a>--%>
<%--                <a href="./products.jsp" class="btn btn-secondary"> 상품 목록 &raquo;</a>--%>
<%--            </form>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--    <hr>--%>
<%--</div>--%>
<jsp:include page="footer.jsp"/>
</body>
</html>
