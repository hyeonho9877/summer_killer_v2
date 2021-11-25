<%@ page contentType="text/html;charset=utf-8" %>
<%@ page errorPage="errPage.jsp" %>
<%@ include file="localeSetter.jsp" %>
<head>
    <link href="resources/css/footer-stylesheet.css" rel="stylesheet">
</head>
<footer>
    <p>All rights reserved by 'BBABBIKO - Summer Killer'</p>
    <div class="language-selector">
        <%
            String uri = request.getRequestURI();
            String[] queries;
            String queryString = request.getQueryString();

            if(queryString == null){
                queries  = new String[1];
                queries[0] = "language=ko";
            } else queries = queryString.split("&");

            StringBuilder url = new StringBuilder(uri);
            url.append("?");
            for (String query : queries) {
                if (!query.contains("language"))
                    url.append(query);
            }
            String requestURL = queries.length > 1 ? url.substring(0, url.length()) : url.substring(0, url.length() - 1);
        %>
        <%
            out.print("<label for=\"language-select\" class=\"language-label\">언어 선택</label>");
            out.print("<select id=\"language-select\" onchange='location.href=\"" + requestURL + (queries.length > 1 ? "&" : "?") + "language=\"+this.value'>");
        %>

        <%
            if (language.equals("ko")) {
                out.print("<option id='ko' value='ko' selected>한국어</option>");
                out.print("<option id='en' value='en'>English</option>");
            } else {
                out.print("<option id='ko' value='ko'>한국어</option>");
                out.print("<option id='en' value='en' selected>English</option>");
            }
            out.print("</select>");
        %>
    </div>
</footer>
