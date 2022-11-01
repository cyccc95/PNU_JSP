<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="common.JDBConnectMySQL"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<title>JDBC</title>
</head>
<body>
	<a href="./ExeUpdate_urlInfo.jsp?num=102&title=제목102&content=내용102&id=musthave2">url로 데이터 전송</a>
	
	<h1>form으로 데이터 전송</h1>
	<form action="ExeUpdate_urlInfo.jsp" method="post">
		num : <input type="number" name="num" /><br />
		title : <input type="text" name="title" /><br />
		content : <input type="text" name="content" /><br />
		id : <input type="text" name="id" /><br />
		<input type="submit" value="POST 방식 전송" />	
	</form>

	<%--
	
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
	
	--%>
</body>
</html>
