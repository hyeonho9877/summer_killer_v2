<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=utf-8" %>
<%@ page errorPage="errPage.jsp" %>
<%@ include file="localeSetter.jsp" %>
<fmt:setLocale value='<%=language%>'/>
<fmt:bundle basename="bundle.menuBundle">
    <head>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700&display=swap" rel="stylesheet">
        <link href="resources/css/menu-stylesheet.css" rel="stylesheet">
        <script src="resources/js/menu.js"></script>
        <script src="resources/js/mypage.js"></script>
    </head>
    <div class='hidden-menu'>
        <a class="open"><img class='menu-icon' src="upload/menu-icon.png"></a>
        <ul class="hide">
            <li><a href="introduction.jsp?language=<%=language%>"><span class="span-title"><fmt:message
                    key="index"/></span> <fmt:message
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
                    <span class="button-introduction"><fmt:message key="introductionFull"/></span>
                    <ul class="trd_menu sub_menu-intro" style="display: none">
                        <li><a class="display-block mw-60" href="introduction.jsp?language=<%=language%>"><fmt:message
                                key="introduction"/></a></li>
                        <li><a class="display-block mw-60" href="history.jsp?language=<%=language%>"><fmt:message
                                key="history"/></a></li>
                    </ul>
                    <li><a href="cf.jsp?language=<%=language%>"><fmt:message key="cf"/></a></li>
                </ul>
                <p class="nav-title"><a href="index.jsp?language=<%=language%>"><fmt:message
                        key="index"/></a></p>
                <ul class="ul-2">
                    <li><a href="shopping.jsp?language=<%=language%>"><fmt:message key="shopping"/></a></li>
                    <li><a href="gallery.jsp?language=<%=language%>"><fmt:message key="gallery"/></a></li>
                </ul>
                <%
                    Boolean authorized = (Boolean) session.getAttribute("authorized");
                    if (authorized != null) {
                        String username = (String) session.getAttribute("username");
                        int index = username.indexOf("@");
                        username = username.substring(0, index);
                %>
                <span class="button-my-page"><%=username%> &#9660;</span>
                <ul class="trd_menu sub_menu">
                    <%
                        String role = (String) session.getAttribute("role");
                        if (role.equals("admin")) {
                    %>
                    <li><a href="addItem.jsp?language=<%=language%>"><fmt:message key="addProduct"/></a></li>
                    <%
                        }
                    %>
                    <li><a href="cart.jsp?language=<%=language%>"><fmt:message key="cart"/></a></li>
                    <li><a href="myPage.jsp?language=<%=language%>"><fmt:message key="mypage"/></a></li>
                    <li><a href="signout.jsp?language=<%=language%>"><fmt:message key="signout"/></a></li>
                </ul>
                <%
                } else {
                %>
                <a href="signin.jsp?language=<%=language%>" class="button-sign-in"><fmt:message key="signIn"/></a>
                <%
                    }
                %>
            </nav>
        </div>
        <%
            if (!(request.getRequestURI().contains("productDetail") || request.getRequestURI().contains("thankyou") || request.getRequestURI().contains("myPage"))) {
        %>
        <div class="head">
            <header>
                <div main-header>
                    <img class="logo" src="upload/logo-left.png">
                    <h1><a class="font-bold" href="index.jsp?language=<%=language%>"><span><fmt:message
                            key="index"/></span></a></h1>
                    <img class="logo" src="upload/logo-right.png">
                </div>
            </header>
        </div>
        <%
            if (!(request.getRequestURI().contains("signin") || request.getRequestURI().contains("signup")
                    || request.getRequestURI().contains("cart") || request.getRequestURI().contains("addReview")
                    || request.getRequestURI().contains("addItem"))) {
        %>
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
        <%
            }
        %>
        <%
            }
        %>
    </div>
</fmt:bundle>