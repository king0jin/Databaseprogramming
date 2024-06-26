<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="CSS/header.css">
</head>
<body>
<header class="header">
    <div class="topheader">
        <div class="logocontainer">
            <div class="logo">
                <img src="img/logo.svg" alt="숙명식당로고" />
                <div class="logo-text">숙명식당</div>
            </div>
        </div>
        <div class="topheadermenu">
            <ul class="mypage_cart">
                <li><a href="#mypage">마이페이지</a></li>
                <li class="separator"></li>
                <img class="cartlogo" src="img/cart.svg" alt="장바구니로고"/>
                <li><a href="cart.jsp">장바구니</a></li>
            </ul>
            <hr/>
        </div>
    </div>
    <div class="header-divider"></div>
    <ul class="mainmenu">
        <li><a href="MSpage.jsp" class="${pageContext.request.servletPath == '/MSpage.jsp' ? 'selected' : ''}">명신관</a></li>
        <li><a href="SHpage.jsp">순헌관</a></li>
        <li><a href="THEBAKEpage.jsp">더베이크</a></li>
        <li><a href="POPULARpage.jsp">인기 메뉴</a></li>
    </ul>
</header>

<div class="smimg">
    <img src="img/sm.png">
</div>
</body>
</html>