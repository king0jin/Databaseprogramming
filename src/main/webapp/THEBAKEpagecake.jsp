<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
<html>
<head>
    <meta charset="UTF-8">
    <title>숙명식당 :: 더베이크 케이크</title>
    <link rel="stylesheet" type="text/css" href="CSS/THEBAKEpage.css">
</head>
<body>
	<div class="mainpage">
	    <ul class="category">
	        <li class="menu-item" id="bakery" onclick="selectMenu('bakery')"><a href="THEBAKEpage.jsp">베이커리</a></li>
	        <li class="menu-item" id="sand" onclick="selectMenu('sand')"><a href="THEBAKEpagesand.jsp">샌드위치</a></li>
	        <li class="menu-item" id="drink" onclick="selectMenu('drink')"><a href="THEBAKEpagedrink.jsp">커피/음료</a></li>
	        <li class="menu-item selected" id="cake" onclick="selectMenu('cake')"><a href="THEBAKEpagecake.jsp">케이크</a></li>
	    </ul>
	    <div class="menu-container" id="menu-container">
	        <button class="menu-item-card1">
	            <div class="menu-item-background">
	                <div class="menu-item-image" style="background-image: url('images/image1.png');"></div>
	                <div class="menu-item-divider"></div>
	                <div class="menu-item-name">브라우니</div>
	                <div class="menu-item-price">4,500원</div>
	                <div class="menu-item-add-container">
	                    <img class="menu-item-add-icon" src="img/cart.svg" alt="Cart Icon">
	                    <div class="menu-item-add-text">담기</div>
	                </div>
	            </div>
	        </button>
	     </div>
	</div>
	<div id="cake1" class="modal">
	    <div class="modal-content">
	        <span class="close" onclick="closeModal('cake1')">&times;</span>
	        <p>브라우니</p>
	    </div>
	    <div class="quantity">
            <label for="cake1Quantity">수량 :</label>
            <input type="number" id="cake1Quantity" name="quantity" value="0" min="0" max="5">
        </div>   
            <button id="addToCartcake1" class="add-to-cart">장바구니</button>
            <button onclick="closeModal('cake1')" class="add-to-cart">닫기</button>	
    </div>
	<script src="javascript/THEBAKEpagecake.js"></script>
	<script src="javascript/THEBAKEpagecakemodal.js"></script>
	<script>
	    function selectMenu(category) {
	        var items = document.getElementsByClassName('menu-item');
	        for (var i = 0; i < items.length; i++) {
	            items[i].classList.remove('selected');
	        }
	        document.getElementById(category).classList.add('selected');
	    }
	
	    document.addEventListener('DOMContentLoaded', function() {
	        selectMenu('cake');
	    });
	</script>
</body>
</html>