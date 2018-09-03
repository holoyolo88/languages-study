<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>add</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String productName = request.getParameter("product");
	ArrayList list =(ArrayList)session.getAttribute("productlist");
	
	if(list == null)
	{
		list = new ArrayList();
		session.setAttribute("productlist",list);
	}
	list.add(productName);
	%>
<script>
alert("<%=productName %>가 추가되었습니다.");
</script>

</body>
</html>