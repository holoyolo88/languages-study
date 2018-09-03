<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "ch7.*"%>
<!DOCTYPE html>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="addr" class="ch7.AddrBean" />
<jsp:setProperty name = "addr" property="tel"></jsp:setProperty>
<jsp:setProperty name = "addr" property="username"></jsp:setProperty>
<jsp:setProperty name = "addr" property="email"></jsp:setProperty>

<jsp:useBean id="am" class="ch7.addrManager" scope="application"/>
<%am.add(addr); %>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
이름 : <jsp:getProperty property="username" name="addr"/>
전화번호 : <jsp:getProperty property="tel" name="addr"/>
이메일 : <jsp:getProperty property="email" name="addr"/>
<a href="addr_list.jsp">목록 보기</a>
</body>
</html>