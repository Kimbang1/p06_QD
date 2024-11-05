<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="true" %>    
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>로그인</title>
	<link rel="stylesheet" href="/style/style.css?v">
</head>
<body>
	<div id="wrap">
		<h1> 로그인</h1>
		<hr>
		<form action="loginProc.jsp">
		
		<input name="uid"  id="uid" type="text" placeholder="아이디 입력">
		<input name="upw" id="upw" type="text" placeholder="비밀번호 입력">
		
		
		<div id="BtnArea">
		<button>로그인</button>
		</div>
	</form>
		 
	</div>
	<!-- div#wrap -->
	<script src="../script/jquery-3.7.1.min.js"></script>
	<script src="../script/script.js"></script>
</body>
</html>    