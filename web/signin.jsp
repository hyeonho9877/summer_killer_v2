<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page errorPage="errPage.jsp" %>
<%@ include file="localeSetter.jsp" %>
<fmt:setLocale value='<%=language%>'/>
<fmt:bundle basename="bundle.signInBundle">
    <html>
    <head>
        <title><fmt:message key="signIn-title"/></title>
        <link rel="stylesheet" href="resources/css/login-stylesheet.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"/>
        <script src="resources/js/jquery-3.5.1.min.js"></script>
    </head>
    <body>
    <div>
        <jsp:include page="menu.jsp"/>
        <div class="container">
            <div class="wrapper">
                <div class="title"><span><fmt:message key="signIn-form-title"/></span></div>
                <form action="signInProcess.jsp?language=<%=language%>" method="post">
                    <div class="err-msg-container">
                        <%
                            String errcode = request.getParameter("errcode");
                            if(errcode!=null && errcode.equals("1")){
                                out.print("<span class='err-msg'>아이디 혹은 비밀번호가 틀렸습니다.</span>");
                            }
                        %>
                    </div>
                    <div class="row">
                        <i class="fas fa-user"></i>
                        <fmt:message key="signIn-username-placeHolder" var="id_placeHolder"/>
                        <input type="text" name="username" placeholder="${id_placeHolder}" required autofocus>
                    </div>

                    <div class="row">
                        <i class="fas fa-lock"></i>
                        <fmt:message key="signIn-password-placeHolder" var="pw_placeHolder"/>
                        <input type="password" name="password" placeholder="${pw_placeHolder}" required>
                    </div>
                    <div class="pass"><a href="#"><fmt:message key="signIn-forgot-password"/></a></div>
                    <div class="row button">
                        <fmt:message key="signIn-process-button" var="signIn_process"/>
                        <input type="submit" value="${signIn_process}">
                    </div>
                    <div class="signup-link"><fmt:message key="signIn-signUp-message"/> <a
                            href="signup.jsp?language=<%=language%>"><fmt:message
                            key="signIn-signUp-link"/></a></div>
                </form>
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