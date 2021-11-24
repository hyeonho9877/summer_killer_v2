<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="localeSetter.jsp"%>
<%@ page errorPage="errPage.jsp" %>
<html>
<head>
    <title>응애</title>
    <link rel="stylesheet" href="resources/css/thankyou-stylesheet.css">
</head>
<body>
<jsp:include page="menu.jsp"/>
<span class="span-err err-title">감사합니다</span>
<span class="span-err err-desc">주문이 정상적으로 처리되었습니다.</span>
<a class="home-link" href="index.jsp">홈으로 &raquo;</a>
<jsp:include page="footer.jsp"/>
</body>
</html>