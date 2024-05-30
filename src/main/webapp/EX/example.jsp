<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% 
		String driver = "oracle.jdbc.driver.OracleDriver"; 
		String url = "jdbc:oracle:thin:@localbost:1521:xe"; 
		String user = "db2012133" ; 
		String password = "ss2";//password 는 Oracle 처음 설치시 password를 입력합니다 
		try { 
			Class.forName (driver); 
			out.println( "jdbc driver 로딩 성공" ); 
			DriverManager.getConnection(url, user, password); 
			out.println( "오라클 연결 성공" ); 
			} catch (ClassNotFoundException e) { 
				System.out.println( "jdbc driver 로딩 실패 "); 
			} catch (SQLException e) { 
				System.out.println( "오라클 연결 실패 "); 
			} 
	%>
</body>
</html>