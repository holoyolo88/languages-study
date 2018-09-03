<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>selProduct</title>
</head>
<%
// HTML 폼에서 전달된 데이터의 한글 인코딩
request.setCharacterEncoding("UTF-8");
// session에 username 이름으로 HTML 폼의 <input type="text" name = "username"/>에 입력된 값 저장
session.setAttribute("username", request.getParameter("username"));
%>
<body>
상품 선택
<%=session.getAttribute("username") %>님이 로그인하였습니다.
<form name = "form1" method = "POST" action="add.jsp">
 <select name = "product">
  <option>사과</option>
  <option>바나나</option>
  <option>복숭아</option>
  <option>레몬</option> 
 </select>
 <input type = "submit" value = "선택"/>
 
 <a href="checkOut.jsp">계산</a>
</form>

</body>
</html>