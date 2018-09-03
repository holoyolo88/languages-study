<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.util.*"%>
<!DOCTYPE html>

<% 
request.setCharacterEncoding("UTF-8");
String username = request.getParameter("username");

if(username != null)
{
	session.setAttribute("user",username);
}
%>
<html>
<head>
<meta charset="UTF-8">
<title>My twitter</title>
</head>
<body>
<div align = left>
<form action = "tweet.jsp" method = "POST">
<%= session.getAttribute("user") %>
<input type = "text" name = "msg"/>
<input type = "submit" value = "send"/>
</form>
</div>

<div align = center>
<%
	ArrayList<String> msgs = (ArrayList<String>)application.getAttribute("msgs");
	if(msgs != null){
		for(String msg : msgs){
		 out.println("<li>"+msg+"<li>");
		}
	}
%>
</div>
</body>
</html>