<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%
	String dbDriver = "oracle.jdbc.driver.OracleDriver";
	String dbURL = "jdbc:oracle:thin:@localhost:1521:xe"; // Update with your DB details
	String dbUser = "db2012133"; // Update with your DB username
	String dbPasswd = "ss2"; // Update with your DB password
    Connection conn = null;
    Statement stmt = null;
    ResultSet rs = null;
    List<Map<String, String>> menuList = new ArrayList<>();

    try {
        Class.forName("oracle.jdbc.driver.OracleDriver");
        conn = DriverManager.getConnection(dbURL, dbUser, dbPasswd);
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

<%@ include file="bar.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>숙명식당 :: POPULAR</title>
    <link rel="stylesheet" type="text/css" href="CSS/POPULARpage.css">
</head>
<body>
<div class="mainpage">
    <ul class="category">
        <li class="menu-item selected" id="mspopular" onclick="selectMenu('MS')"><a href="POPULARpage.jsp">명신관</a></li>
        <li class="menu-item" id="tbpopular" onclick="selectMenu('TB')"><a href="TBpopularpage.jsp">더베이크</a></li>
    </ul>
    <div class="menu-container" id="menu-container">
        <button class="menu-item-card1">
            <div class="menu-item-background">
                <div class="menu-item-image" style="background-image: url('images/image1.png');"></div>
                <div class="menu-item-divider"></div>
                <div class="menu-item-name">제육덮밥</div>
                <div class="menu-item-price">4,500원</div>
            </div>
        </button>
        <button class="menu-item-card1">
            <div class="menu-item-background">
                <div class="menu-item-image" style="background-image: url('images/image1.png');"></div>
                <div class="menu-item-divider"></div>
                <div class="menu-item-name">돈까스</div>
                <div class="menu-item-price">4,500원</div>
            </div>
        </button>
        <button class="menu-item-card1">
            <div class="menu-item-background">
                <div class="menu-item-image" style="background-image: url('images/image1.png');"></div>
                <div class="menu-item-divider"></div>
                <div class="menu-item-name">쫄면</div>
                <div class="menu-item-price">4,500원</div>
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
        selectMenu('MS');
    });
</script>
</body>
</html>