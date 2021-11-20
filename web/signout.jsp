<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page errorPage="errPage.jsp" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String language = request.getParameter("language");
    System.out.println(language);
    session.invalidate();
    response.sendRedirect("index.jsp?language="+language);
%>
</body>
</html>
