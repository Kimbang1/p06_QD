<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="pg.mem.LoginBean" %> 

<jsp:useBean id="loginBean" class="pg.mem.LoginBean"/>
<jsp:setProperty name="loginBean" property="*" />
<%
	boolean chk = loginBean.chkAcount(session,request);
	
%>

	<script>
	<%if(chk){ %>
	alert(`로그인 되셨습니다.`); 
	location.href="welcom.jsp";
	<%}else{%>
	  alert(`로그인 정보가 틀렸습니다.`);
	  history.back();
	<% }%>
	
	
	</script>
</body>
</html>    