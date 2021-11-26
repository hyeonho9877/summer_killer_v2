<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page errorPage="errPage.jsp" %>
<%@ include file="dbConn.jsp" %>
<%
    int pid = Integer.parseInt(request.getParameter("pid"));
%>
<div class="detail-container">
    <%
        String query = "select * from summer_killer.review where product= ?";
        PreparedStatement pstmt = conn.prepareStatement(query);
        pstmt.setInt(1, pid);
        boolean thereIsReview = false;

        ResultSet resultSet = pstmt.executeQuery();
        while (resultSet.next()) {
            thereIsReview = true;
            if (resultSet.isFirst()) {
    %>
    <ol class="review-container">
        <%
            }
        %>
        <%
            String writer = resultSet.getString("writer");
            String writer_mosaic = writer.substring(0, 3);
            writer = writer_mosaic + "*****";
            String title = resultSet.getString("title");
            String text = resultSet.getString("text");
        %>
        <li class="review-list">
            <div class="customer-review">
                <p class="review-detail-writer color-darkslategrey"><%=writer%>
                </p>
                <p class="review-detail-title color-darkslategrey"><%=title%>
                </p>
                <p class="review-detail-text color-darkslategrey"><%=text%>
                </p>
            </div>
        </li>
        <%
            }
            if (!thereIsReview) {
        %>
        <ol class="review-container">
            <li class="review-list">
                <div class="customer-review">
                    <p class="review-detail-writer color-darkslategrey">리뷰가 없습니다
                    </p>
                    <p class="review-detail-title color-darkslategrey">리뷰가 없습니다
                    </p>
                    <p class="review-detail-text color-darkslategrey">리뷰가 없습니다
                    </p>
                </div>
            </li>
        </ol>
        <%
        } else {
        %>
    </ol>
    <%
        }
    %>
</div>