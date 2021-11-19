<%@ page contentType="text/html;charset=utf-8" %>
<head>
    <link href="resources/css/footer-stylesheet.css" rel="stylesheet">
</head>
<footer>
    <p>All rights reserved by 'BBABBIKO - Summer Killer'</p>
    <div class="language-selector">
        <%
            String uri = request.getRequestURI();
            out.print("<label for=\"language-select\">언어 선택</label>");
            out.print("<select id=\"language-select\" onchange=\"if(this.value) location.href=(this.value);\">");
            if (language.equals("ko")) {
                out.print("<option value='"+uri+"?language=ko' selected>한국어</option>");
                out.print("<option value='"+uri+"?language=en' >English</option>");
            } else {
                out.print("<option value='"+uri+"?language=ko'>한국어</option>");
                out.print("<option value='"+uri+"?language=en' selected>English</option>");
            }
            out.print("</select>");
        %>
    </div>
</footer>
