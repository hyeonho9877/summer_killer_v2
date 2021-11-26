<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page errorPage="errPage.jsp" %>
<%@ include file="localeSetter.jsp" %>
<fmt:setLocale value='<%=language%>'/>
<fmt:bundle basename="bundle.addItemBundle">
<html>
<head>
    <script src="resources/js/jquery-3.5.1.min.js"></script>
    <!-- Icons font CSS-->
    <link href="resources/vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="resources/vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i"
          rel="stylesheet">

    <!-- Vendor CSS-->
    <link href="resources/vendor/select2/select2.min.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="resources/css/signUp-stylesheet.css" rel="stylesheet" media="all">
    <title><fmt:message key="add-title"/></title>
    <style>
        input::-webkit-outer-spin-button,
        input::-webkit-inner-spin-button {
            -webkit-appearance: none;
            margin: 0;
        }
    </style>
</head>
<body>
<jsp:include page="menu.jsp"/>
<div class="page-wrapper bg-gra-02 p-t-100 p-b-100 font-poppins">
    <div class="wrapper wrapper--w680">
        <div class="card card-4">
            <div class="card-body">
                <h2 class="title"><fmt:message key="add-form-title"/></h2>
                <form method="POST" action="processAddItem.jsp" enctype="multipart/form-data">
                    <div class="input-group">
                        <label class="label"><fmt:message key="add-productID"/></label>
                        <fmt:message key="add-productID-placeHolder" var="pid_holder"/>
                        <input class="input--style-4" placeholder="${pid_holder}" type="number" id="pid" name="pid" required min="0" maxlength="3">
                    </div>
                    <div class="input-group">
                        <label class="label"><fmt:message key="add-productName"/></label>
                        <fmt:message key="add-productName-placeHolder" var="pname_holder"/>
                        <input class="input--style-4" placeholder="${pname_holder}" name="pname" type="text" id="pname" required maxlength="50">
                    </div>
                    <div class="row row-space">
                        <div class="col-2">
                            <div class="input-group">
                                <label class="label"><fmt:message key="add-price"/></label>
                                <input class="input--style-4" type="number" name="price" id="price" required min="0">
                            </div>
                        </div>
                        <div class="col-2">
                            <div class="input-group">
                                <label class="label"><fmt:message key="add-stock"/></label>
                                <input class="input--style-4" type="number" name="stock" id="stock" required min="0">
                            </div>
                        </div>
                    </div>
                    <div class="input-group">
                        <label class="label"><fmt:message key="add-desc"/></label>
                        <fmt:message key="add-desc-placeHolder" var="desc_holder"/>
                        <textarea style="width: 100%; min-height: 100px" class="input--style-4" placeholder="${desc_holder}" name="desc" id="desc" required maxlength="100"></textarea>
                    </div>
                    <div class="input-group">
                        <label class="label"><fmt:message key="add-productImage"/></label>
                        <input class="input--style-4" type="file" name="pIamge" id="address" required>
                    </div>
                    <div class="input-group">
                        <label class="label"><fmt:message key="add-detail"/></label>
                        <input class="input--style-4" type="file" name="detail" id="phone" multiple required>
                    </div>
                    <div class="p-t-15">
                        <fmt:message key="add-submit" var="submit_loc"/>
                        <input class="btn btn--radius-2 btn-submit" type="submit" value="${submit_loc}" id="btn-submit">
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<!-- Vendor JS-->
<script src="resources/vendor/select2/select2.min.js"></script>
<div class="hidden-language">
    <a href="<%=request.getRequestURI()%>?language=ko">한국어</a> | <a href="<%=request.getRequestURI()%>?language=en">English</a>
</div>
<jsp:include page="footer.jsp"/>
</body>
</html>
</fmt:bundle>