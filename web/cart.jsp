<%@ page import="repository.Product" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="localeSetter.jsp" %>
<%@ page errorPage="errPage.jsp" %>
<fmt:setLocale value='<%=language%>'/>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="resources/css/cart-stylesheet.css">
    <script>
        function confirmUser(){
            event.preventDefault()
            if(confirm("장바구니를 비우시겠습니까?")){
                location.href="clearCart.jsp"
            }
        }
    </script>
</head>
<body>
<jsp:include page="menu.jsp"/>
<div class="container">
    <div style="padding-top: 50px">
        <table class="table table-hover font-1half">
            <tr>
                <th>상품</th>
                <th>가격</th>
                <th>수량</th>
                <th>소계</th>
                <th>비고</th>
            </tr>
            <%
                int sum = 0;
                ArrayList<Product> cartList = (ArrayList<Product>) session.getAttribute("cart");
                for (int i = 0; i < cartList.size(); i++) {
                    Product product = cartList.get(i);
                    int total = product.getPrice() * product.getQnt();
                    sum = sum + total;
            %>
            <tr>
                <td><%=product.getName()%>
                </td>
                <td><%=product.getPrice()%>
                </td>
                <td><%=product.getQnt()%>
                </td>
                <td><%=total%>
                </td>
                <td><a href="./removeItem.jsp?pid=<%=product.getPid()%>" class="badge badge-danger">삭제</a></td>
            </tr>
            <%
                }
            %>
            <tr>
                <th></th>
                <th></th>
                <th>총액</th>
                <th><%=sum%>
                </th>
                <th></th>
            </tr>
        </table>
        <div class="row btn-cart">
            <a class="btn btn-danger" href="clearCart.jsp" onclick="confirmUser()">장바구니 비우기</a>
            <a class="btn btn-info margin-0-1p" href="processOrder.jsp">주문하기</a>
        </div>
        <a href="shopping.jsp" class="btn btn-secondary"> &laquo; 쇼핑 계속하기</a>
    </div>
    <hr>
</div>
<jsp:include page="footer.jsp"/>
</body>
</html>
