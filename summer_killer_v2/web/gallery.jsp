<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="menu.jsp" %>
<html lang="ko">
<head>
<fmt:setLocale value='<%=language%>'/>
<fmt:bundle basename="bundle.galleryBundle">
    <meta charset="UTF-8">
    <meta name="viewport" item="width=device-width, initial-scale=1.0">
    <title><fmt:message key="gal_title"/></title>
    <link rel="stylesheet" href="resources/css/gallery-stylesheet.css?after">
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">
    </head>
    <body>
    <div class="article">
        <div class="container">
            <div class="box">
                <div class="content">
                    <img src="resources/css/1.jpg">
                </div>
            </div>
            <div class="box">
                <div class="content">
                    <img src="resources/css/2.jpg">
                </div>
            </div>
            <div class="box">
                <div class="content">
                    <img src="resources/css/3.jpg">
                </div>

            </div>
            <div class="box">
                <div class="content">
                    <img src="resources/css/4.jpg">
                </div>

            </div>
            <div class="box">
                <div class="content">
                    <img src="resources/css/5.jpg">
                </div>

            </div>
            <div class="box">
                <div class="content">
                    <img src="resources/css/6.jpg">
                </div>

            </div>
            <div class="box">
                <div class="content">
                    <img src="resources/css/7.jpg">
                </div>

            </div>
            <div class="box">
                <div class="content">
                    <img src="resources/css/8.jpg">
                </div>

            </div>
            <div class="box">
                <div class="content">
                    <img src="resources/css/9.jpg">
                </div>

            </div>
            <div class="box">
                <div class="content">
                    <img src="resources/css/10.jpg">
                </div>

            </div>
            <div class="box">
                <div class="content">
                    <img src="resources/css/11.jpg">
                </div>

            </div>
            <div class="box">
                <div class="content">
                    <img src="resources/css/12.jpg">
                </div>

            </div>
            <div class="box">
                <div class="content">
                    <img src="resources/css/13.png">
                </div>

            </div>
            <div class="box">
                <div class="content">
                    <img src="resources/css/14.png">
                </div>

            </div>
            <div class="box">
                <div class="content">
                    <img src="resources/css/15.jpg">
                </div>

            </div>
            <div class="box">
                <div class="content">
                    <img src="resources/css/16.jpg">
                </div>
            </div>
        </div>
    </div>
    <%@ include file="footer.jsp" %>
    </body>
    </html>
</fmt:bundle>