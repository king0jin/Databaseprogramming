<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="CSS/SHpage.css">
<title>숙명식당 :: 순헌관 식권 구매</title>
</head>
<body>
	<header class="header">
		<div class="topheader">
			<div class="logocontainer">
				<div class="logo">
					<img src="img/KakaoTalk_20240528_133042390.png" alt="titleLogo" />
            		<div class="logo-text">숙명식당</div>
				</div>
        	</div>
        	<div class="topheadermenu">
        		<ul class="mypage_cart">
					<li><a href="#mypage">마이페이지</a></li>
					<li class="separator"></li>
					<img class="cartlogo" src="img/cart.png" alt="장바구니로고"/>
            		<li><a href="#cart">장바구니</a></li>
        		</ul>
        		<hr/>
        	</div>
      	</div>
      	<div class="divider1"></div>
      	<ul class="mainmenu">
        	<li><a href="#MS_page">명신관</a></li>
        	<li><a href="#SH_page">순헌관</a></li>
        	<li><a href="#THEBAKE_page">더베이크</a></li>
        	<li><a href="#BOARD_page">게시판</a></li>
      	</ul>
	</header>
		
	<div class="smimg">
		<img src="img/숙명여대이미지.png">
	</div>
	
	<div class="divider2"></div>
	<div class="mainpage">
		<div class="SH-text">순헌관B1F 11:30 ~ 14:00 | 식권구매 </div>
		<div class="divider3"></div>
		<span class="buttoncontainer">
			<button class="SHmenu1">
				<div>
				<div class="menu-items">
		            <p>모듬햄부대찌개</p>
		            <p>잡곡밥</p>
		            <p>밥 곽밥</p>
		            <p>생선커틀렛</p>
		            <p>야채스크램블에그</p>
		            <p>오이생채</p>
		            <p>깍두기</p>
		            <p>그린샐러드</p>
		            <p>숭늉*현미밥</p>
		        </div>
		        <hr>
		        <div class="footer">
            <div class="category">한식</div>
            <br>
            <p class="price">6,500원</p>
            
        </div>
				</div>
			</button>
			<button class="SHmenu2">
				<div>
				<div class="menu-items">
		            <p>모듬햄부대찌개</p>
		            <p>잡곡밥</p>
		            <p>밥 곽밥</p>
		            <p>생선커틀렛</p>
		            <p>야채스크램블에그</p>
		            <p>오이생채</p>
		            <p>깍두기</p>
		            <p>그린샐러드</p>
		            <p>숭늉*현미밥</p>
		        </div>
		        <hr>
		        <div class="footer">
            <div class="category">양식</div>
            <p class="price">6,500원</p>
            
        </div>
				</div>
			</button>
		</span>
	</div>
	<!-- 모달 -->
		<!-- Korean Meal Modal -->
	    <div id="koreanMealModal" class="modal">
	        <div class="modal-content">
	            <span class="close" onclick="closeModal('koreanMealModal')">&times;</span>
	            <p>한식 식권</p>
	        </div>
	        <div class="quantity">
                    <label for="koreanQuantity">수량 :</label>
                    <input type="number" id="koreanQuantity" name="quantity" value="1" min="1">
                </div>
                
                <button id="addToCartKorean" class="add-to-cart">장바구니</button>
                <button onclick="closeModal('koreanMealModal')" class="add-to-cart">닫기</button>
         		
         </div>
	
	    <!-- Western Meal Modal -->
	    <div id="westernMealModal" class="modal">
	        <div class="modal-content">
	            <span class="close" onclick="closeModal('westernMealModal')">&times;</span>
	            <p>양식 식권</p>
	        </div>
	        <div class="quantity">
                    <label for="WesternQuantity">수량 :</label>
                    <input type="number" id="WesternQuantity" name="quantity" value="1" min="1">
                </div>
                
	            <button id="addToCartWestern" class="add-to-cart">장바구니</button>
	            <button onclick="closeModal('westernMealModal')" class="add-to-cart">닫기</button>
          		  
            </div>
	<script src="javascript/SHpage.js"></script>
	<script src="javascript/SHmodal.js"></script>
</body>
</html>