<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%
    String url = "jdbc:oracle:thin:@localhost:1521:xe";
    String user = "db2012133";
    String password = "ss2";
    Connection conn = null;
    Statement stmt = null;
    ResultSet rs = null;
    List<Map<String, String>> menuList = new ArrayList<>();

    try {
        Class.forName("oracle.jdbc.driver.OracleDriver");
        conn = DriverManager.getConnection(url, user, password);
        stmt = conn.createStatement();
        String query = "SELECT * FROM menu";
        rs = stmt.executeQuery(query);

        while (rs.next()) {
            // TODO 명신관 메뉴 받아오기
            Map<String, String> menuItem = new HashMap<>();

            menuList.add(menuItem);
        }
    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        if (rs != null) try { rs.close(); } catch (SQLException e) { e.printStackTrace(); }
        if (stmt != null) try { stmt.close(); } catch (SQLException e) { e.printStackTrace(); }
        if (conn != null) try { conn.close(); } catch (SQLException e) { e.printStackTrace(); }
    }
    request.setAttribute("menuList", menuList);
%>

<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>명신관</title>
    <link rel="stylesheet" type="text/css" href="CSS/MSpage.css">
</head>
<body>
<div class="mainpage">
    <ul class="category">
        <li class="menu-item" id="cupbab" onclick="selectMenu('cupbab')"><a href="MSpage.jsp">컵밥</a></li>
        <li class="menu-item" id="western" onclick="selectMenu('western')"><a href="MSpageWestern.jsp">양식</a></li>
        <li class="menu-item selected" id="special" onclick="selectMenu('special')"><a href="MSpageSpecial.jsp">스페셜메뉴</a></li>
    </ul>
    <div class="menu-container" id="menu-container">
        <button class="menu-item-card">
            <div class="menu-item-background">
                <div class="menu-item-image" style="background-image: url('images/image1.png');"></div>
                <div class="menu-item-divider"></div>
                <div class="menu-item-name">순두부찌개</div>
                <div class="menu-item-price">5,900원</div>
                <div class="menu-item-add-container">
                    <img class="menu-item-add-icon" src="img/cart.svg" alt="Cart Icon">
                    <div class="menu-item-add-text">담기</div>
                </div>
            </div>
        </button>
        <button class="menu-item-card">
            <div class="menu-item-background">
                <div class="menu-item-image" style="background-image: url('images/image2.png');"></div>
                <div class="menu-item-divider"></div>
                <div class="menu-item-name">현충일 휴무</div>
                <div class="menu-item-price">0원</div>
                <div class="menu-item-add-container">
                    <img class="menu-item-add-icon" src="img/cart.svg" alt="Cart Icon">
                    <div class="menu-item-add-text">담기</div>
                </div>
            </div>
        </button>
    </div>
</div>

<script>
    function selectMenu(category) {
        var items = document.getElementsByClassName('menu-item');
        for (var i = 0; i < items.length; i++) {
            items[i].classList.remove('selected');
        }
        document.getElementById(category).classList.add('selected');
    }

    document.addEventListener('DOMContentLoaded', function() {
        selectMenu('special');
    });
</script>
</body>
</html>