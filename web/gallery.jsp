<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page errorPage="errPage.jsp" %>
<%@ include file="localeSetter.jsp" %>
<fmt:setLocale value='<%=language%>'/>
<fmt:bundle basename="bundle.galleryBundle">
    <html>
    <head>
        <title><fmt:message key="gal_title"/></title>
        <link rel="stylesheet" href="resources/css/gallery-stylesheet.css?after">
    </head>
    <body>
    <jsp:include page="menu.jsp"/>
    <div class="article">
        <div class="container">
            <div class="box">
                <div class="content">
                    <img src="resources/images/1.jpg">
                </div>
            </div>
            <div class="box">
                <div class="content">
                    <img src="resources/images/2.jpg">
                </div>
            </div>
            <div class="box">
                <div class="content">
                    <img src="resources/images/3.jpg">
                </div>

            </div>
            <div class="box">
                <div class="content">
                    <img src="resources/images/4.jpg">
                </div>

            </div>
            <div class="box">
                <div class="content">
                    <img src="resources/images/5.jpg">
                </div>

            </div>
            <div class="box">
                <div class="content">
                    <img src="resources/images/6.jpg">
                </div>

            </div>
            <div class="box">
                <div class="content">
                    <img src="resources/images/7.jpg">
                </div>

            </div>
            <div class="box">
                <div class="content">
                    <img src="resources/images/8.jpg">
                </div>

            </div>
            <div class="box">
                <div class="content">
                    <img src="resources/images/9.jpg">
                </div>

            </div>
            <div class="box">
                <div class="content">
                    <img src="resources/images/10.jpg">
                </div>

            </div>
            <div class="box">
                <div class="content">
                    <img src="resources/images/11.jpg">
                </div>

            </div>
            <div class="box">
                <div class="content">
                    <img src="resources/images/12.jpg">
                </div>

            </div>
            <div class="box">
                <div class="content">
                    <img src="resources/images/13.png">
                </div>

            </div>
            <div class="box">
                <div class="content">
                    <img src="resources/images/14.png">
                </div>

            </div>
            <div class="box">
                <div class="content">
                    <img src="resources/images/15.jpg">
                </div>

            </div>
            <div class="box">
                <div class="content">
                    <img src="resources/images/16.jpg">
                </div>
            </div>
        </div>
    </div>
    <div class="hidden-language">
        <a href="<%=request.getRequestURI()%>?language=ko">한국어</a> | <a href="<%=request.getRequestURI()%>?language=en">English</a>
    </div>
    <jsp:include page="footer.jsp"/>
    </body>
    </html>
</fmt:bundle>