<%@ page import="repository.Product" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="static java.lang.Math.min" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="localeSetter.jsp" %>
<%@ page errorPage="errPage.jsp" %>
<fmt:setLocale value='<%=language%>'/>
<fmt:bundle basename="bundle.cartBundle">
    <html>
    <head>
        <title><fmt:message key="cart-title"/></title>
        <script src="resources/js/jquery-3.5.1.min.js"></script>
        <link rel="stylesheet" href="resources/css/bootstrap.min.css">
        <link rel="stylesheet" href="resources/css/cart-stylesheet.css">
        <script src="resources/js/cart.js"></script>
    </head>
    <body>
    <jsp:include page="menu.jsp"/>
    <div class="container">
        <div style="padding-top: 50px">
            <table class="table table-hover font-1half">
                <tbody id="product-table">
                <tr>
                    <th><fmt:message key="cart-product"/></th>
                    <th><fmt:message key="cart-price"/></th>
                    <th><fmt:message key="cart-qnt"/></th>
                    <th><fmt:message key="cart-sum"/></th>
                    <th><fmt:message key="cart-remark"/></th>
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
                    <td><input type="number" id="qnt-<%=product.getPid()%>" class="qnt"
                               max="<%=min(10,product.getStock())%>" maxlength="1" min="1"
                               value="<%=product.getQnt()%>"
                               onchange="changePrice(<%=product.getPid()%>, <%=product.getPrice()%>)">
                    </td>
                    <td id="item-<%=product.getPid()%>"><%=total%>
                    </td>
                    <td><a class="badge badge-danger" onclick="confirmDeleteItem(<%=product.getPid()%>)"
                           style="color: white"><fmt:message key="cart-del"/></a></td>
                </tr>
                <%
                    }
                %>
                <tr>
                    <th></th>
                    <th></th>
                    <th><fmt:message key="cart-total"/></th>
                    <th id="total-price"><%=sum%>
                    </th>
                    <th></th>
                </tr>
                </tbody>
            </table>
            <%
                if (sum > 0) {
            %>
            <div class="row btn-cart">
                <a class="btn btn-danger" href="clearCart.jsp" onclick="confirmDeleteCart()"><fmt:message
                        key="cart-del-cart"/></a>
                <a class="btn btn-info margin-0-1p" href="processOrder.jsp?language=<%=language%>"
                   onclick="confirmOrder()"><fmt:message key="cart-order"/></a>
            </div>
            <%
                }
            %>
            <a href="shopping.jsp" class="btn btn-secondary"> &laquo; <fmt:message key="cart-return"/></a>
        </div>
        <hr>
    </div>
    <jsp:include page="footer.jsp"/>
    </body>
    </html>
</fmt:bundle>