<%@ page contentType="text/html;charset=utf-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="localeSetter.jsp" %>
<%@ page errorPage="errPage.jsp" %>
<fmt:setLocale value='<%=language%>'/>
<fmt:bundle basename="bundle.signUpBundle">
    <html>
    <head>
        <title><fmt:message key="signup-title"/></title>
        <!-- Icons font CSS-->
        <link href="resources/vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
        <link href="resources/vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
        <!-- Font special for pages-->
        <link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i"
              rel="stylesheet">

        <!-- Vendor CSS-->
        <link href="resources/vendor/select2/select2.min.css" rel="stylesheet" media="all">
        <link href="resources/vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">

        <!-- Main CSS-->
        <link href="resources/css/signUp-stylesheet.css" rel="stylesheet" media="all">
    </head>
    <body>
    <jsp:include page="menu.jsp"/>
    <body>
    <div class="page-wrapper bg-gra-02 p-t-100 p-b-100 font-poppins">
        <div class="wrapper wrapper--w680">
            <div class="card card-4">
                <div class="card-body">
                    <h2 class="title"><fmt:message key="signup-form-title"/></h2>
                    <form method="POST" action="signUpProcess.jsp?language=<%=language%>" onsubmit="checkForm()">
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label"><fmt:message key="signup-form-firstName"/></label>
                                    <input class="input--style-4" type="text" name="first_name" id="first_name" required
                                           pattern="^[A-Za-z가-힣]+$" autofocus>
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label"><fmt:message key="signup-form-lastName"/></label>
                                    <input class="input--style-4" type="text" name="last_name" id="last_name" required
                                           pattern="^[A-Za-z가-힣]+$">
                                </div>
                            </div>
                        </div>
                        <div class="row row-space">
                            <div class="input-email">
                                <label class="label"><fmt:message key="signup-form-email"/></label>
                                <input class="input--style-8" type="text" name="username" id="email" required>
                                <button class="btn-validate btn--radius-2" id="btn-validate-id" onclick="validateID()">
                                    <fmt:message key="signup-form-check-email"/></button>
                            </div>
                        </div>
                        <div class="input-group">
                            <fmt:message key="signup-form-password-placeHolder" var="passwd_placeHolder"/>
                            <label class="label"><fmt:message key="signup-form-password"/></label>
                            <input class="input--style-4" placeholder="${passwd_placeHolder}" type="password"
                                   name="password" id="password" required
                                   pattern="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[a-zA-Z]).{8,20}$">
                        </div>
                        <div class="input-group">
                            <fmt:message key="signup-form-password-confirm-placeHolder"
                                         var="passwd_confirm_placeHolder"/>
                            <label class="label"><fmt:message key="signup-form-password-confirm"/></label>
                            <input class="input--style-4" placeholder="${passwd_confirm_placeHolder}" type="password"
                                   id="password-confirm" required>
                        </div>
                        <div class="input-group">
                            <label class="label"><fmt:message key="signup-form-address"/></label>
                            <input class="input--style-4" type="text" name="address" id="address" required>
                        </div>
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label"><fmt:message key="signup-form-phone"/></label>
                                    <fmt:message key="signup-form-phone-placeHolder" var="phone_placeHolder"/>
                                    <input class="input--style-4" type="text" name="phone" id="phone"
                                           placeholder="${phone_placeHolder}" required pattern="010-\d{4}-\d{4}">
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label"><fmt:message key="signup-form-gender"/></label>
                                    <div class="p-t-10">
                                        <label class="radio-container m-r-45"><fmt:message
                                                key="signup-form-gender-male"/>
                                            <input type="radio" checked="checked" name="gender" value="M">
                                            <span class="checkmark"></span>
                                        </label>
                                        <label class="radio-container"><fmt:message key="signup-form-gender-female"/>
                                            <input type="radio" name="gender" value="F">
                                            <span class="checkmark"></span>
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="p-t-15">
                            <input class="btn btn--radius-2 btn-submit" type="submit"
                                   value="<fmt:message key="signup-form-submit"/>" id="btn-submit" disabled>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- Jquery JS-->
    <script src="resources/vendor/jquery/jquery.min.js"></script>
    <!-- Vendor JS-->
    <script src="resources/vendor/select2/select2.min.js"></script>
    <script src="resources/vendor/datepicker/moment.min.js"></script>
    <script src="resources/vendor/datepicker/daterangepicker.js"></script>

    <!-- Main JS-->
    <script src="resources/js/signUp.js"></script>
    <script src="resources/js/signUpValidate.js"></script>
    </body>
    <div class="hidden-language">
        <a href="<%=request.getRequestURI()%>?language=ko">한국어</a> | <a href="<%=request.getRequestURI()%>?language=en">English</a>
    </div>
    <jsp:include page="footer.jsp"/>
    </body>
    </html>
</fmt:bundle>