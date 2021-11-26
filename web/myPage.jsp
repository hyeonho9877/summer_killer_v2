<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="repository.Product" %>
<%@ page import="repository.ProductRepository" %>
<%@ page import="java.util.stream.Collectors" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Comparator" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page errorPage="errPage.jsp" %>
<html>
<head>
    <title>빠삐코 :: 마이 페이지</title>
    <script src="resources/js/jquery-3.5.1.min.js"></script>
    <link rel="stylesheet" href="resources/css/myPage-stylesheet.css">
</head>
<body>
<jsp:include page="menu.jsp"/>
<div class="article">
    <div class="purchase-history container">
        <div class="purchase-history-title">
            <h1>주문 내역 <span class="sub-title">(3일 이내의 주문만 조회할 수 있습니다.)</span></h1>
        </div>
        <div class="purchase-history-desc">
            <%@ include file="dbConn.jsp" %>
            <%
                String username = (String) session.getAttribute("username");
                String query = "select * from summer_killer.purchase where username = ? and p_date >= DATE_ADD(NOW(), INTERVAL - 3 DAY) order by p_date desc";
                PreparedStatement pstmt = conn.prepareStatement(query);
                pstmt.setString(1, username);

                ProductRepository repository = ProductRepository.getInstance();
                ResultSet resultSet = pstmt.executeQuery();
                HashMap<String, ArrayList<Product>> history = new HashMap<>();

                while (resultSet.next()) {
                    int pId = resultSet.getInt("product_id");
                    int qnt = resultSet.getInt("qnt");
                    String date = resultSet.getDate("p_date").toString();
                    boolean received = resultSet.getBoolean("received");
                    boolean reviewed = resultSet.getBoolean("reviewed");
                    int purchaseId = resultSet.getInt("pid");

                    System.out.println(date);
                    Product product = repository.getProductByPid(pId);
                    product.setQnt(qnt);
                    product.setReceived(received);
                    product.setReviewed(reviewed);
                    product.setPurchaseId(purchaseId);

                    history.computeIfAbsent(date, k -> new ArrayList<>());
                    history.get(date).add(product);
                }

                List<String> collect = history.keySet()
                        .stream()
                        .sorted(Comparator.comparing(String::toString).reversed())
                        .collect(Collectors.toList());

                for (String date : collect) {
                    System.out.println(date);
                    ArrayList<Product> dateHistory = history.get(date);

            %>
            <div class="purchase-history-detail">
                <div class="purchase-history-detail-title">
                    <span class="font-2"><%=date%></span>
                </div>
                <%
                    for (Product product : dateHistory) {
                        String name = product.getName();
                        int qnt = product.getQnt();
                        String filepath = product.getFilepath();
                        boolean received = product.isReceived();
                        boolean reviewed = product.isReviewed();
                        int purchaseId = product.getPurchaseId();
                %>
                <div class="purchase-history-detail-desc">
                    <div class="purchase-history-detail-img">
                        <img class="img-thumbnail" src="upload/<%=filepath%>">
                    </div>
                    <div class="purchase-history-detail-name font-1half">
                        <span><%=name%></span>
                    </div>
                    <div class="purchase-history-detail-qnt font-1half">
                        <span><%=qnt%> EA</span>
                    </div>
                    <div class="purchase-history-detail-received font-1half">
                        <%
                            if (received) {
                                if (reviewed) {
                        %>
                        <span>배송 완료</span>
                        <%
                        } else {
                        %>
                        <a href="addReview.jsp?pid=<%=purchaseId%>" class="write-review-link">리뷰 작성하기</a>
                        <%
                            }
                        %>
                        <%
                        } else {
                        %>
                        <span>배송중</span>
                        <%
                            }
                        %>
                    </div>
                </div>
                <%
                    }
                %>
            </div>
            <%
                }
                pstmt.close();
                conn.close();
            %>
        </div>
    </div>
</div>
<jsp:include page="footer.jsp"/>
</body>
</html>
