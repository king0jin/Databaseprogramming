<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="CSS/header1.css">
<title>마이페이지</title>
</head>

<style>
	.components{
		font-family: 'Noto Sans KR';
		margin : 40px;
	}
	
	.components span{
		font-size : 18px;
	}
	
	.profile {
		display : flex;
		width : 350px;
		justify-content : space-around;
		margin-bottom : 100px;
	}
	
	.profile img{
		margin-left: 10px;
		margin-top: 20px;
		margin-right : 20px;
		width : 100px;
		height: 100px;
	}
	
	.profile .profileInfo{
		margin-top:10px;
	}

	button {
        cursor: pointer;
        padding: 10px 20px;
        margin: 5px;
        background-color: #f8f8f8;
        border-radius : 8px;
        border: 1px solid #ddd;
    }

    button:hover {
        background-color: #e8e8e8;
    }
    
    .components .mytitle{
    	font-size : 18px;
    	font-weight : 600;
    	margin-top: 35px;
    	margin-bottom : 10px;
    }
    
    .purchasedmenu{
    	display: flex;
    	justify-content : space-around;
    	text-align : center;
    	width : 1000px;
    	font-family : 'Noto Sans KR';
    	font-weight : 500;
    }
    
    .purchasedmenu .date, .menucnt, .menuprice{
    	margin-top : 10px;
    }
    
    .purchasedmenu .menucnt, .menuprice{
    	font-weight : 600;
    }
    
    .menuinfo {
    	display: flex;
    	flex-direction : column;
    }
    
    .menuinfo .mainmenu{
    	margin-top : 3px;
    	font-size : 15px;
    	font-weight : 600;
    }
    
    .menuinfo .furtherinfo{
    	margin-top : 5px;
    	font-size : 11px;
    	font-weight : 500;
    }
    
    .menuimg img {
    	width : 50px;
    	height : 50px;
    }

</style>

<body>
<header class="header">
		<div class="topheader">
			<div class="logocontainer">
				<div class="logo">
					<img src="img/KakaoTalk_20240528_133042390.png" alt="titleLogo" />
            		<div class="logo-text"><a href="home_page.jsp">숙명식당</a></div>
				</div>
        	</div>
        	<div class="topheadermenu">
        		<ul class="mypage_cart">
					<li><a href="mypage.jsp">마이페이지</a></li>
					<li class="separator"></li>
					<img class="cartlogo" src="img/cart.png" alt="장바구니로고"/>
            		<li><a href="cart.jsp">장바구니</a></li>
        		</ul>
        		<hr/>
        	</div>
      	</div>
      	<div class="divider1"></div>
      	<ul class="mainmenu">
        	<li><a href="myeongshin.jsp">명신관</a></li>
        	<li><a href="#SH_page">순헌관</a></li>
        	<li><a href="#THEBAKE_page">더베이크</a></li>
        	<li><a href="#BOARD_page">게시판</a></li>
      	</ul>
	</header>
		
	<div class="smimg">
		<img src="img/숙명여대이미지.png">
	</div>
	
	<div class="divider2"></div>
<table width="100%" align="center" height="100%">

<!-- 프로파일 부분 -->
<div class = "components">
	<span><strong>userNickname</strong>님 반갑습니다!</span>
	<div class = "profile">
		<img src = "img/profile.png" alt="프로필 사진">
			<div class = "profileInfo">
				<p><strong>userID(ex. songsong_123)</strong></p>
				<button class="change">정보수정</button>
				<button class="logout">로그아웃</button>
			</div>
	</div>
</div>

<!-- 주문내역 -->
<div class = "components">
	<div class ="mytitle">구매 내역</div>
	<hr>
	<div class="mytitle">명신관</div>
	<div class="purchasedmenu">
		<div class="date">2024.05.10</div>
		<div class="menuimg"><img src="img/myeong1.png"></div>
		<div class="menuinfo">
			<div class="mainmenu">[양식] 돈까스</div>
			<div class="furtherinfo">매장, 토핑 추가 없음</div>
		</div>
		<div class="menucnt">1개</div>
		<div class="menuprice">5300원</div>
	</div>
	<hr style="border: dashed 1px grey;">


	<div class="mytitle">순헌관</div>
	<div class="purchasedmenu">
		<div class="date">2024.05.15</div>
		<div class="menuimg"><img src="img/sun2.png"></div>
		<div class="menuinfo">
			<div class="img">[양식 식권]</div>
			<div class="furtherinfo">2024.05.15 기한만료</div>
		</div>
		<div class="menucnt">1개</div>
		<div class="menuprice">6500원</div>
	</div>
	<hr style="border: dashed 1px grey;">
	
	<div class="mytitle">더베이크</div>
	<div class="purchasedmenu">
		<div class="date">2024.05.18</div>
		<div class="menuimg"><img src="img/thebake6.png"></div>
		<div class="menuinfo">
			<div class="mainmenu">[베이커리] 모카번</div>
			<div class="furtherinfo">매장</div>
		</div>
		<div class="menucnt">1개</div>
		<div class="menuprice">2600원</div>
	</div>
</div>


</body>
</html>