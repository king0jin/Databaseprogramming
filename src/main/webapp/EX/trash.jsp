<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 :: 휴지통</title>
<link rel="stylesheet" type="text/css" href="CSS/THEBAKE_manager.css">
</head>
<body>
	<header class="header">
		<div class="topheader">
			<div class="logocontainer">
				<div class="logo">
					<img src="img/free-icon-cutlery-308556.png" alt="titleLogo" />
            		<div class="logo-text">숙명식당</div>
				</div>
        	</div>
        	<div class="topheadermenu">
        		<ul class="manager">
            		<li><a href="#manager">관리자</a></li>
        		</ul>
        		<hr/>
        	</div>
      	</div>
      	<div class="divider1"></div>
      	<ul class="mainmenu">
        	<li><a href="#MS_manager">명신관</a></li>
        	<li><a href="#SH_manager">순헌관</a></li>
        	<li><a href="#THEBAKE_manager">더베이크</a></li>
        	<li><a href="#BOARD_manager">게시판</a></li>
      	</ul>
	</header>
		
	<div class="smimg">
		<img src="img/숙명여대이미지.png">
	</div>
	
	<div class="divider2"></div>
	<div class="mainpage">
		<span class="BOARD-text">게시판 | </span>
		<select name="BOARDselect" id="mainSelect">
        	<option value="list">게시글</option>
        	<option value="trash">휴지통</option>
    	</select>
    	<script src="javascript/BOARD_manager.js"></script>
		<div class="divider3"></div>
		<span class="total">총 게시물 : </span>
		<br>
		<div class="table-container">
	        <table class="custom-table">
	            <thead>
	                <tr>
	                    <th>번호</th>
	                    <th>제목</th>
	                    <th>등록일자</th>
	                    <th>등록자</th>
	                    <th>조회수</th>
	                    <th>전체선택 (1/1)</th>
	                    <th>삭제</th>
	                </tr>
	            </thead>
	        </table>
    	</div>
    	<div>
    		게시글불러오기
    	</div>
	</div>
</body>
</html>