<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=utf-8" %>
<%@ page errorPage="errPage.jsp" %>
<%@ include file="localeSetter.jsp"%>
<fmt:setLocale value='<%=language%>'/>
<html>
<head>
    <title>빠삐코 :: 소비자 게시판</title>
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">
    <script src="resources/js/jquery-3.5.1.min.js"></script>
</head>
<body>
<jsp:include page="menu.jsp"/>
<div>
</div>
<div class="hidden-language">
    <a href="<%=request.getRequestURI()%>?language=ko">한국어</a> | <a href="<%=request.getRequestURI()%>?language=en">English</a>
</div>
<jsp:include page="footer.jsp"/>
</body>
</html>
