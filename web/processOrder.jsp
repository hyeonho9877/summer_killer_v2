<%@ page import="java.util.ArrayList" %>
<%@ page import="repository.Product" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page errorPage="errPage.jsp" %>
<%@ include file="localeSetter.jsp"%>
<%@include file="dbConn.jsp" %>
<%
    ArrayList<Product> cart = (ArrayList<Product>) session.getAttribute("cart");
    String username = (String) session.getAttribute("username");

    String query = "insert into summer_killer.purchase (username, product_id, qnt, price) values(?,?,?,?)";
    PreparedStatement pstmt = conn.prepareStatement(query);

    String selectQuery = "select stock from summer_killer.product where pid=?";
    PreparedStatement selectPstmt = conn.prepareStatement(selectQuery);

    String updateQuery = "update summer_killer.product set stock = ? where pid=?";
    PreparedStatement updatePstmt = conn.prepareStatement(updateQuery);

    for (Product product : cart) {
        pstmt.setString(1, username);
        pstmt.setInt(2, product.getPid());
        pstmt.setInt(3, product.getQnt());
        pstmt.setInt(4, product.getQnt() * product.getPrice());

        selectPstmt.setInt(1, product.getPid());
        ResultSet resultSet = selectPstmt.executeQuery();
        resultSet.next();
        int stock = resultSet.getInt("stock");

        updatePstmt.setInt(1, stock-product.getQnt());
        updatePstmt.setInt(2, product.getPid());

        updatePstmt.executeUpdate();
        pstmt.executeUpdate();
    }

    cart.removeAll(cart);

    updatePstmt.close();
    selectPstmt.close();
    pstmt.close();
    conn.close();
    response.sendRedirect("thankyou.jsp?language="+language);
%>
