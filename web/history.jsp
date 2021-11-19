<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="menu.jsp" %>
<fmt:setLocale value='<%=language%>'/>
<fmt:bundle basename="bundle.historyBundle">
    <html>
    <head>
        <title><fmt:message key="history_title"/></title>
        <link rel="stylesheet" href="resources/css/stylesheet.css">
    </head>
    <body>
    <div class="article">
        <div class="sub-head">
            <h1><span><fmt:message key="history-span"/></span><fmt:message key="history-subhead"/></h1>
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
        <div class="brothers">
            <img src="resources/css/milk.png" alt="">
            <img src="resources/css/vanilla.png" alt="">
            <img src="resources/css/pouch.png" alt="">
        </div>
    </div>
    <%@ include file="footer.jsp" %>
    </body>
    </html>
</fmt:bundle>