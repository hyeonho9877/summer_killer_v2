<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="localeSetter.jsp"%>
<%@ page errorPage="errPage.jsp" %>
<fmt:setLocale value="<%=language%>"/>
<fmt:bundle basename="bundle.thankBundle">
<html>
<head>
    <title><fmt:message key="thank-title"/></title>
    <script src="resources/js/jquery-3.5.1.min.js"></script>
    <link rel="stylesheet" href="resources/css/thankyou-stylesheet.css">
</head>
<body>
<jsp:include page="menu.jsp"/>
<span class="span-err err-title"><fmt:message key="thank-message-title"/></span>
<span class="span-err err-desc"><fmt:message key="thank-message-body"/></span>
<a class="home-link" href="index.jsp"><fmt:message key="thank-goto-home"/> &raquo;</a>
<jsp:include page="footer.jsp"/>
</body>
</html>
</fmt:bundle>