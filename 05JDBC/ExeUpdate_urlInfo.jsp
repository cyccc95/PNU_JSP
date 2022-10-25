<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="common.JDBConnectMySQL"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>DB에 전송한 데이터</h1>
	<div>num : <%= request.getParameter("num") %></div>
	<div>title : <%= request.getParameter("title") %></div>
	<div>content : <%= request.getParameter("content") %></div>
	<div>id : <%= request.getParameter("id") %></div>
	
	<%
	
	String num = request.getParameter("num");
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	String id = request.getParameter("id");
	
	// Database에 연결
	JDBConnectMySQL jdbc = new JDBConnectMySQL();
	
	// 쿼리문 생성
	String sql = "INSERT INTO board(num, title, content, id) VALUES (?, ?, ?, ?)";
	PreparedStatement psmt = jdbc.con.prepareStatement(sql);
	psmt.setInt(1, Integer.parseInt(num));
	psmt.setString(2, title);
	psmt.setString(3, content);
	psmt.setString(4, id);
		
// 	쿼리 수행
	int inResult = psmt.executeUpdate();
	out.println(inResult + "행이 입력되었습니다.");

	// 연결 닫기
	jdbc.close();
	
	%>
</body>
</html>