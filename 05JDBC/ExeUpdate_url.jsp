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
	<a href="./ExeUpdate_urlInfo.jsp?num=101&title=제목101&content=내용101&id=musthave1">url로 데이터 전송</a>

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
