<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="menu.jsp" %>
<fmt:setLocale value='<%=language%>'/>
<fmt:bundle basename="bundle.introBundle">
    <html>
    <head>
        <title><fmt:message key="intro_title"/></title>
        <link rel="stylesheet" href="resources/css/stylesheet.css">
        <script src="resources/js/jquery-3.5.1.min.js"></script>
    </head>
    <body>
    <div class="article">
        <div class="introduction">
            <div><img class='icon' src="resources/css/lotte-food.png"></div>
            <div class="introduction-article">
                <div class="article-head"><h1><fmt:message key="intro_article-title-1"/></h1></div>
                <div>
                    <p>&nbsp;<fmt:message key="intro_article-desc-1"/></p>
                </div>
            </div>
        </div>
        <div class="introduction-reverse">
            <div><img class="icon" src="resources/css/summer-killer-icon.jpg"></div>
            <div class="introduction-article">
                <div class="article-head"><h1><fmt:message key="intro_article-title-2"/></h1></div>
                <div>
                    <p>&nbsp;<fmt:message key="intro_article-desc-2"/></p>
                </div>
            </div>
        </div>
        <div class="introduction">
            <div><img class="icon" src="resources/css/goindol.gif" alt=""></div>
            <div class="introduction-article">
                <div class="article-head"><h1><fmt:message key="intro_article-title-3"/></h1></div>
                <div>
                    <p>&nbsp;<fmt:message key="intro_article-desc-3"/></p>
                </div>
            </div>
        </div>
    </div>
    <%@ include file="footer.jsp" %>
    </body>
    </html>
</fmt:bundle>