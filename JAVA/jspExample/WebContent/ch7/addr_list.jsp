<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  import = "jspExample.ch7.*"%>
<!DOCTYPE html>
<<jsp:useBean id="am" class = "jspExample.ch7.AddrManager" scope="application"></jsp:useBean>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<a href="addr_form.html">주소 추가</a>
<table border=1 width=500>

<tr><td>이름</td><td>전화번호</td><td>이메일</td></tr></table>
<%
for(AddrBean ab : am.getAddrList()){%>
<tr>
<td><%=ab.getUsername() %></td>
<td><%=ab.getTel() %></td>
<td><%=ab.getEmail() %></td>
</tr>
<%
}
%>
</body>
</html>