<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:useBean id="login" class="jspExample.ch7.LoginBean" scope="page" />
<jsp:setProperty name="login" property="userid" />
<jsp:setProperty name="login" property="passwd" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
		<%
			if (!login.checkUser()) {
				out.println("로그인 실패");
			} else {
				out.println("로그인 성공");
			}
		%>
	<hr>
	사용자 아이디 :
	<jsp:getProperty name="login" property="userid" />
	사용자 패스워드 :
	<jsp:getProperty name="login" property="passwd" />

</body>
</html>