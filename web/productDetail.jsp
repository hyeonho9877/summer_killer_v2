<%@ page import="repository.ProductRepository" %>
<%@ page import="repository.Product" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="localeSetter.jsp" %>
<%@ page errorPage="errPage.jsp" %>
<fmt:setLocale value='<%=language%>'/>
<fmt:bundle basename="bundle.productDetailBundle">
<%
    ProductRepository repository = ProductRepository.getInstance();
    Product product = repository.getProductByPid(Integer.parseInt(request.getParameter("pid")));
%>
<html>
<head>
    <title><%=product.getName()%>
    </title>
    <script src="resources/js/jquery-3.5.1.min.js"></script>
    <link rel="stylesheet" href="resources/css/productDetail-stylesheet.css">
    <script src="resources/js/order.js"></script>
    <link rel="stylesheet" href="resources/css/review-stylesheet.css">
</head>
<body>
<jsp:include page="menu.jsp"/>
<div class="container">
    <div class="detail-container">
        <h1 class="title  font-4"><fmt:message key="product-info"/></h1>
    </div>
    <div class="product-info display-inline-flex">
        <div class="product-img">
            <img class="img-thumbnail" src="upload/<%=product.getFilepath()%>">
        </div>
        <div class="product-desc">
            <span class="product-name font-3" id="pname"><%=product.getName()%></span>
            <p class="product-desc-detail font-1half" id="desc"><%=product.getDescription()%>
            </p>
            <p class="product-price font-3"><%=product.getPrice()%> <fmt:message key="product-won"/></p>
            <div class="order-qnt text-end p-20">
                <label for="qnt" class="color-darkslategrey font-1half"><fmt:message key="product-qnt"/></label>
                <input class="font-1half qnt-input" type="number" id="qnt" maxlength="1" max="10" min="1" value="1">
            </div>
            <div class="margin-top-15">
                <a href="#" class="btn btn-info display-block product-link"
                   onclick="addToCart(<%=product.getPid()%>, <%=session.getAttribute("authorized")%>)"> <fmt:message key="product-add"/>
                    &raquo;</a>
            </div>
        </div>
    </div>
    <div class="detail-container">
        <h1 class="title  font-4"><fmt:message key="product-images"/></h1>
        <div class="container">
            <%
                for (int i = 1; i <= product.getDetailImage(); i++) {

            %>
            <img src="upload/details/<%=product.getPid()%>/<%=i%>.jpg" class="detail-img">
            <%
                }
            %>
        </div>
    </div>

    <div class="detail-container">
        <h1 class="title  font-4"><fmt:message key="product-review"/></h1>
        <jsp:include page="productReview.jsp"/>
    </div>
</div>
<jsp:include page="footer.jsp"/>
</body>
</html>
</fmt:bundle>