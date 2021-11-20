<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page errorPage="errPage.jsp" %>
<%@ include file="localeSetter.jsp"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:include page="menu.jsp"/>
<div>
</div>
<div class="hidden-language">
    <a href="index.jsp?language=ko">한국어</a> | <a href="index.jsp?language=en">English</a>
</div>
<jsp:include page="footer.jsp"/>
</body>
</html>
