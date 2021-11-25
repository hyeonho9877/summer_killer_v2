<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="localeSetter.jsp"%>
<%@ page errorPage="errPage.jsp" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="resources/css/addReview-stylesheet.css">
    <script src="resources/js/jquery-3.5.1.min.js"></script>
</head>
<body>
<jsp:include page="menu.jsp"/>
<%@ include file="dbConn.jsp" %>
<%
    int pid = Integer.parseInt(request.getParameter("pid"));
    String query = "select * from purchase where pid=?";
    PreparedStatement pstmt = conn.prepareStatement(query);
    pstmt.setInt(1, pid);

    ResultSet resultSet = pstmt.executeQuery();

    resultSet.next();
    int product_id = resultSet.getInt("product_id");
    pstmt.close();

    query = "select name, filepath from product where pid = ?";
    PreparedStatement productPstmt = conn.prepareStatement(query);
    productPstmt.setInt(1, product_id);

    ResultSet productResult = productPstmt.executeQuery();
    productResult.next();

    String name = productResult.getString("name");
    String filepath = productResult.getString("filepath");

    productPstmt.close();

    conn.close();
%>
<div class="container">
    <div class="product-info">
        <img src="resources/images/<%=filepath%>" class="product-img">
        <span class="product-name"><%=name%></span>
    </div>
    <div class="review-input">
        <form action="processReview.jsp?productID=<%=product_id%>&pid=<%=pid%>" method="post" class="review-form">
            <input class="review-title" type="text" name="title" maxlength="30" required minlength="5" placeholder="30자 이내로 제목을 입력해주세요">
            <textarea name="text" class="review-area" maxlength="200" placeholder="200자 이내로 리뷰를 작성해주세요" minlength="10" required></textarea><br>
            <input type="submit" value="완료" class="input-button">
        </form>
    </div>
</div>
<jsp:include page="footer.jsp"/>
</body>
</html>
