<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="localeSetter.jsp"%>
<%@ page errorPage="errPage.jsp" %>
<fmt:setLocale value='<%=language%>'/>
<fmt:bundle basename="bundle.historyBundle">
<html>
<head>
    <title><fmt:message key="history_title"/></title>
    <link rel="stylesheet" href="resources/css/stylesheet.css">
    <script src="resources/js/jquery-3.5.1.min.js"></script>
    </head>
    <body>
    <jsp:include page="menu.jsp"/>
    <div class="article">
        <div class="sub-head">
            <h1><span><fmt:message key="history-span"/></span><fmt:message key="history-subhead"/></h1>
        </div>
        <div class="history-img">
            <img class="content-img" src="upload/1981.png" alt="">
            <img class="content-img" src="upload/1999.png" alt="">
            <img class="content-img" src="upload/2005.png" alt="">
            <img class="content-img" src="upload/2013.png" alt="">
        </div>
        <div class="sub-head">
            <h1><span><fmt:message key="history-span"/></span> <fmt:message key="history_brotherhood"/></h1>
        </div>
        <div class="brothers">
            <img src="upload/milk.png" alt="">
            <img src="upload/vanilla.png" alt="">
            <img src="upload/pouch.png" alt="">
        </div>
    </div>
    <div class="hidden-language">
        <a href="<%=request.getRequestURI()%>?language=ko">한국어</a> | <a href="<%=request.getRequestURI()%>?language=en">English</a>
    </div>
    <jsp:include page="footer.jsp"/>
    </body>
    </html>
</fmt:bundle>