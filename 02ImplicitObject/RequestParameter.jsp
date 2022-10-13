<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내장 객체 - request</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");
String id = request.getParameter("id"); // 전송되는 값이 하나라면 getParameter
String sex = request.getParameter("sex");
String[] favo = request.getParameterValues("favo");
String favoStr = "";
if(favo != null){
	for(int i = 0; i < favo.length; i++){
		favoStr += favo[i] + " ";
	}
}
String intro = request.getParameter("intro").replace("\r\n", "<br/>");
// replace("찾을 문자열", "변경할 문자열"), enter가 \r\n으로 입력돼서 <br/>로 바꿔줘야함
%>
<ul>
	<li>아이디 : <%= id %></li>
	<li>성별 : <%= sex %></li>
	<li>관심사항 : <%= favoStr %></li>
	<li>자기소개 : <%= intro %></li>
</ul>
</body>
</html>