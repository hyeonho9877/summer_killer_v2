<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page errorPage="errPage.jsp" %>
<%@ include file="localeSetter.jsp" %>
<fmt:setLocale value='<%=language%>'/>
<fmt:bundle basename="bundle.cfBundle">
<html>
<head>

    <title><fmt:message key="cf_title"/></title>
    <link rel="stylesheet" href="resources/css/cf-stylesheet.css?after">
    <script src="resources/js/script.js"></script>
    <script src="resources/js/jquery-3.5.1.min.js"></script>
    </head>
    <body>
    <jsp:include page="menu.jsp"/>
    <div class="article">
        <a href="#" id="hidden-prev"></a>
        <a href="#" id="hidden-next"></a>
        <div class="slider-container" id="slides">
            <ul class="slider-list">
                <li class="slide"><h1><fmt:message key="cf_slide-1-title"/></h1>
                    <iframe width="40%" height="400" src="https://www.youtube.com/embed/T6Ua34lPh_0" frameborder="0"
                            allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
                            allowfullscreen></iframe>
                </li>
                <li class="slide"><h1><fmt:message key="cf_slide-2-title"/></h1>
                    <iframe width="40%" height="400" src="https://www.youtube.com/embed/EVGjM1msMiM" frameborder="0"
                            allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
                            allowfullscreen></iframe>
                </li>
                <li class="slide"><h1><fmt:message key="cf_slide-3-title"/></h1>
                    <iframe width="40%" height="400" src="https://www.youtube.com/embed/cAid8hM-8R4" frameborder="0"
                            allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
                            allowfullscreen></iframe>
                </li>
                <li class="slide"><h1><fmt:message key="cf_slide-4-title"/></h1>
                    <iframe width="40%" height="400" src="https://www.youtube.com/embed/V-rYe7qiur8" frameborder="0"
                            allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
                            allowfullscreen></iframe>
                </li>
            </ul>
        </div>
        <a href="#" id="prev"></a>
        <a href="#" id="next"></a>
    </div>
    <div class="hidden-language">
        <a href="<%=request.getRequestURI()%>?language=ko">한국어</a> | <a href="<%=request.getRequestURI()%>?language=en">English</a>
    </div>
    <jsp:include page="footer.jsp"/>
    </body>
    </html>
</fmt:bundle>