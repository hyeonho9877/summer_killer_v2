<%@ page contentType="text/html;charset=utf-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<head>
<%
    String language = request.getParameter("language");
    if (language == null) {
        language = "ko";
    }
%>
<fmt:setLocale value='<%=language%>'/>
<fmt:bundle basename="bundle.menuBundle">
    <link href="resources/css/menu-stylesheet.css" rel="stylesheet">
    <script src="resources/js/jquery-3.5.1.min.js"></script>
    <script src="resources/js/menu.js"></script>
    </head>
    <div class='hidden-menu'>

        <a class="open"><img class='menu-icon' src="resources/css/menu-icon.png"></a>
        <ul class="hide">
            <li><a href="introduction.jsp?language=<%=language%>"><span><fmt:message key="index"/></span> <fmt:message
                    key="introduction"/>
            </a></li>
            <li><a href="history.jsp?language=<%=language%>"><fmt:message key="history"/></a></li>
            <li><a href="cf.jsp?language=<%=language%>"><fmt:message key="cf"/></a></li>
            <li><a href="gallery.jsp?language=<%=language%>"><fmt:message key="gallery"/></a></li>
            <li><a href="shopping.jsp?language=<%=language%>"><fmt:message key="shopping"/></a></li>
            <li><a href="postBoard.jsp?language=<%=language%>"><fmt:message key="postBoard"/></a></li>
        </ul>
    </div>
    <div class="page-wrapper">
        <div class="navigator">
            <nav>
                <ul class="ul-1">
                    <li><a href="introduction.jsp?language=<%=language%>"><fmt:message key="introductionFull"/></a></li>
                    <li><a href="history.jsp?language=<%=language%>"><fmt:message key="history"/></a></li>
                    <li><a href="cf.jsp?language=<%=language%>"><fmt:message key="cf"/></a></li>
                </ul>
                <p class="nav-title"><a href="index.jsp?language=<%=language%>"><fmt:message
                        key="index"/></a></p>
                <ul class="ul-2">
                    <li><a href="gallery.jsp?language=<%=language%>"><fmt:message key="gallery"/></a></li>
                    <li><a href="shopping.jsp?language=<%=language%>"><fmt:message key="shopping"/></a></li>
                    <li><a href="postBoard.jsp?language=<%=language%>"><fmt:message key="postBoard"/></a></li>
                </ul>
                <a href="signin.jsp?language=<%=language%>" class="button-sign-in"><fmt:message key="signIn"/></a>
            </nav>
        </div>
        <div class="head">
            <header>
                <div main-header>
                    <img class="logo" src="resources/css/logo-left.png">
                    <h1><a href="index.jsp?language=<%=language%>%>"><span><fmt:message
                            key="index"/></span></a></h1>
                    <img class="logo" src="resources/css/logo-right.png">
                </div>
            </header>
        </div>
        <div class="main-wrapper">
            <div class="description">
                <h3><fmt:message key="description-1"/> <span><fmt:message key="index"/></span> <fmt:message
                        key="description-2"/></h3>
                <%
                    for (float i = 2.7f; i >= 1.7f; i -= 0.5f) {
                %>
                <h3 style="font-size: <%=i%>em"><fmt:message key="giveMe"/></h3>
                <%
                    }
                %>
            </div>
        </div>
    </div>
</fmt:bundle>