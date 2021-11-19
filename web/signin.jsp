<%@ include file="menu.jsp" %>
<html>
<head>
<fmt:setLocale value='<%=language%>'/>
<fmt:bundle basename="bundle.signInBundle">
    <link rel="stylesheet" href="resources/css/login-stylesheet.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"/>
    <title><fmt:message key="signIn-title"/></title>
    </head>
    <body>
    <div>
        <div class="container">
            <div class="wrapper">
                <div class="title"><span><fmt:message key="signIn-form-title"/></span></div>
                <form action="signInProcess.jsp?language=<%=language%>" method="post">
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
                    <div class="signup-link"><fmt:message key="signIn-signUp-message"/> <a href="#"><fmt:message
                            key="signIn-signUp-link"/></a></div>
                </form>
            </div>
        </div>
    </div>
    <%@ include file="footer.jsp" %>
    </body>
    </html>
</fmt:bundle>