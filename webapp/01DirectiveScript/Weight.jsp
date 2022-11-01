<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>경우의 수</title>
</head>
<body>
	<h2>10 ~ 100 사이의 정수를 입력하세요.</h2>
	<%
		String numErr = request.getParameter("numErr");
		if (numErr != null)	out.print("다시 입력하세요.");
	%>
	<form action="CalcWeight.jsp" method="post">
		입력 값 : <input type="number" name="num" />  
		<input type="submit" value="전송" />
	</form>
</body>
</html>