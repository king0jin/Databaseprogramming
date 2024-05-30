<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="CSS/THEBAKE_manager.css">
<title>숙명식당 :: 더베이크 관리자</title>
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
		<span class="THEBAKE-text">더베이크 | </span>
		<select name="THEBAKEselect" id="mainSelect">
        	<option value="PICKUP">PICKUPLIST</option>
        	<option value="MENU">MENU</option>
    	</select>
    	<select name="submenu" id="subMenuSelect" style="display: none;">
        	<option value="select1">베이커리</option>
        	<option value="select2">샌드위치</option>
        	<option value="select3">음료/커피</option>
        	<option value="select4">케이크</option>
    	</select>
    	<script src="javascript/THEBAKE_manager.js"></script>
		<div class="divider3"></div>
		<div class="table-container">
		<table class="pickup-table">
            <tbody>
                <tr>
                    <td class="check-cell">
                        <input type="checkbox" checked>
                    </td>
                    <td class="info-cell">
                        2012133-04
                    </td>
                    <td class="refresh-cell">
                        <button class="refresh-button">↻</button>
                    </td>
         
                </tr>
            </tbody>
        </table>
    	</div>
	</div>
</body>
</html>