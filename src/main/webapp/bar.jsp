<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>숙명상점</title>
    <link rel="stylesheet" href="CSS/barstyle.css"> <!-- 스타일시트 연결 -->
</head>
<body>
    <header>
        <div class="top-bar">
        	<div class="left-dummy"></div>
          	<div class="logo-and-title">
            	<img src="img/logo.svg" alt="로고" class="logo"> <!-- 로고 이미지 -->
            	<div class="page-title"><a href="home_page.jsp">숙명상점</a></div>
          	</div>
            <div class="user-controls">
                <a href="login.jsp">로그인</a>
                <a href="register.jsp">회원가입</a>
                <a href="cart.jsp">장바구니</a>
            </div>
        </div>
        <hr>
        <nav class="menu-bar">
            <a href="myeongshin.jsp">명신관</a>
            <a href="sunheon.jsp">순헌관</a>
            <a href="thebake.jsp">더베이크</a>
        </nav>
        <hr>
      <div class="main-banner">
        <img src="img/schoolfinal.png" alt="메인 배너"> <!-- 메인 배너 이미지 -->
      </div>
    </header>
    
</body>
</html>