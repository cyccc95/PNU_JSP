<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내장 객체 - response</title>
</head>
<body>
<%
String id = request.getParameter("user_id");
String pwd = request.getParameter("user_pwd");
if (id.equalsIgnoreCase("must") && pwd.equalsIgnoreCase("1234")){
	response.sendRedirect("ResponseWelcome.jsp");
} else {
	request.getRequestDispatcher("ResponseMain.jsp?loginErr=1")
		.forward(request, response);
}
%>
</body>
</html>

<!-- 포워드(전달)은 페이지 이동과 다르게 제어 흐름을 넘겨주고자 할 때 사용 -->