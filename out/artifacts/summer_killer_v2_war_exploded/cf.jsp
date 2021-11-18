<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="menu.jsp" %>
<html lang="ko">
<head>
<fmt:setLocale value='<%=language%>'/>
<fmt:bundle basename="bundle.cfBundle">
    <meta charset="UTF-8">
    <meta name="viewport" item="width=device-width, initial-scale=1.0">
    <title><fmt:message key="cf_title"/></title>
    <link rel="stylesheet" href="resources/css/cf-stylesheet.css?after">
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">
    <script src="resources/js/script.js"></script>
    </head>
    <body>
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
    <%@ include file="footer.jsp" %>
    </body>
    </html>
</fmt:bundle>