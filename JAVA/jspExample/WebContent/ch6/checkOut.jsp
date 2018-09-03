<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>checkOut</title>
</head>
<body>
계산
<hr>
선택한 상품 목록
<% 
ArrayList list = (ArrayList) session.getAttribute("productlist");
if(list == null)
{
	out.println("선택한 상품이 없습니다.");
}
else{
	for(Object productName : list)
	out.println("<br>"+productName+"<br>");
}
%>
</body>
</html>