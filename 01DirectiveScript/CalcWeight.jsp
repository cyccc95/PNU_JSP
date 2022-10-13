<%@ page import="common.Weight" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>경우의 수</title>
</head>
<body>
<%
	int num = Integer.parseInt(request.getParameter("num"));
	if(num < 10 || num > 100){
		request.getRequestDispatcher("Weight.jsp?numErr=1")
		.forward(request, response);
	}
%>
	<h2>출력 값 : </h2>
	<h4><%= Weight.calcWeight(num)[0] %> : <%= Weight.calcWeight(num)[1] %></h4>
</body>
</html>