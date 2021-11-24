<%@ page import="java.util.ArrayList" %>
<%@ page import="repository.Product" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page errorPage="errPage.jsp" %>
<%@include file="dbConn.jsp" %>
<%
    ArrayList<Product> cart = (ArrayList<Product>) session.getAttribute("cart");
    String username = (String) session.getAttribute("username");

    String query = "insert into purchase (username, product_id, qnt, price) values(?,?,?,?)";
    PreparedStatement pstmt = conn.prepareStatement(query);

    for (Product product : cart) {
        pstmt.setString(1, username);
        pstmt.setInt(2, product.getPid());
        pstmt.setInt(3, product.getQnt());
        pstmt.setInt(4, product.getQnt() * product.getPrice());

        pstmt.executeUpdate();
    }

    pstmt.close();
    conn.close();
    response.sendRedirect("thankyou.jsp");
%>
