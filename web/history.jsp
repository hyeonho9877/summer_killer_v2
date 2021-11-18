<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="menu.jsp" %>
<html lang="ko">
<head>
<fmt:setLocale value='<%=language%>'/>
<fmt:bundle basename="bundle.historyBundle">
    <meta charset="UTF-8">
    <meta name="viewport" item="width=device-width, initial-scale=1.0">
    <title><fmt:message key="history_title"/></title>
    <link rel="stylesheet" href="resources/css/stylesheet.css">
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">
    </head>
    <body>
    <div class="article">
        <div class="sub-head">
            <h1><span><fmt:message key="history-span"/></span><fmt:message key="history-subhead"/> </h1>
        </div>
        <div class="history-img">
            <img class="content-img" src="resources/css/1981.png" alt="">
            <img class="content-img" src="resources/css/1999.png" alt="">
            <img class="content-img" src="resources/css/2005.png" alt="">
            <img class="content-img" src="resources/css/2013.png" alt="">
        </div>
        <div class="sub-head">
            <h1><span><fmt:message key="history-span"/></span> <fmt:message key="history_brotherhood"/></h1>
        </div>
        <div class="brothers" style="float: left;">
            <img src="resources/css/milk.png" alt="">
            <img src="resources/css/vanilla.png" alt="">
            <img src="resources/css/pouch.png" alt="">
        </div>
    </div>
    <%@ include file="footer.jsp" %>
    </body>
    </html>
</fmt:bundle>