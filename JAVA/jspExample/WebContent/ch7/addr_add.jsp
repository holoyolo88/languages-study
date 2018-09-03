<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "jspExample.ch7.*"%>
<!DOCTYPE html>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="addr" class=jspExample.ch7.AddrBean></jsp:useBean>
<jsp:setProperty name = "addr" property="*"></jsp:setProperty>
<jsp:useBean id="am" class=jspExample.ch7.addrManager></jsp:useBean>
<jsp:setProperty name = "am" property="*"></jsp:setProperty>
<%am.add(addr); %>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
이름 : <jsp:getProperty property="username" name="addr"/>
전화번호 : <jsp:getProperty property="tel" name="addr"/>
이메일 : <jsp:getProperty property="tel" name="addr"/>
<a href="addr_list.jsp">목록 보기</a>
</body>
</html>