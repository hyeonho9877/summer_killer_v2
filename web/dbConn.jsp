<%@ page import="java.sql.SQLException" %>
<%@ page import="repository.DBConnector" %>
<%@ page errorPage="errPage.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    DBConnector conn = null;
    try {
        conn = new DBConnector(
                "localhost:3306",
                "summer_killer",
                "root",
                "rlrkfpdhfn1"
        );

        conn.establish();
    } catch (ClassNotFoundException e) {
        System.out.println("드라이버 파일 에러");
        response.sendRedirect("");
    } catch (SQLException e) {
        System.out.println("테이블 연결 에러");
        response.sendRedirect("");
    }
%>
