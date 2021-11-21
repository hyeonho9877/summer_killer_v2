<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="localeSetter.jsp"%>
<%@ page errorPage="errPage.jsp" %>
<fmt:setLocale value='<%=language%>'/>
<fmt:bundle basename="bundle.indexBundle">
<html>
<head>
    <title><fmt:message key="index_title"/></title>
    <link rel="stylesheet" href="resources/css/stylesheet.css?after">
    <script src="resources/js/jquery-3.5.1.min.js"></script>
    <script src="resources/js/jQueryRotateCompressed.js"></script>
    <script src="resources/js/color-inversion.js"></script>
    </head>
    <body>
    <jsp:include page="menu.jsp"/>
    <div class="article">
        <div class="sorry">
            <h1><fmt:message key="index_sorry"/></h1>
            <p><fmt:message key="index_sorry-p-1"/><br><fmt:message key="index_sorry-p-2"/></p>
        </div>
        <div class="main-image">
            <img src="resources/images/summer-killer.jpg" id="image" onmouseover="spin()">
        </div>
        <div class="shoppingLink">
            <h1 id="pc"><fmt:message key="index_shoppingLink"/></h1>
            <h3 id="mobile"><fmt:message key="index_shoppingLink"/></h3>
            <p id="itemLink"><a
                    href="https://www.coupang.com/vp/products/1395471409?itemId=2430790954&vendorItemId=70843056995&pickType=COU_PICK&q=%EB%B9%A0%EC%82%90%EC%BD%94&itemsCount=36&searchId=f5d904baa6574d9db53b8f3b185aed59&rank=1&isAddedCart=">
                <fmt:message key="index_shoppingLink-go"/> </a></p>
        </div>
    </div>
    <div class="hidden-language">
        <a href="<%=request.getRequestURI()%>?language=ko">한국어</a> | <a href="<%=request.getRequestURI()%>?language=en">English</a>
    </div>
    <jsp:include page="footer.jsp"/>
    </body>
    </html>
</fmt:bundle>