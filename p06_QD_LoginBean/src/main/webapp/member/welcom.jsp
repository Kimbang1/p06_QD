<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page session="true" %> 
    
    
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>로그인 후 정상처리 출력페이지</title>
	<link rel="stylesheet" href="/style/style.css?v">
</head>
<body>
	<div id="wrap">
		<%
		String sid = (String)session.getAttribute("sid");
		%>
		<h2><%=sid %>님께서 로그인하셨습니다.</h2>
		<form action="login.jsp">
		<button id= BTN>되돌아가기</button>
		</form>
	</div>
	<!-- div#wrap -->
	<script src="/script/jquery-3.7.1.min.js"></script>
	<script>
	$(function(){
		$("#BTN").click(function(){
			location.href="login.jsp"
		});
	});
	
	</script>
</body>
</html>    