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
	<h2>회원 추가 테스트(executeUpdate() 사용)</h2>
	<%
	
	// Database에 연결
	JDBConnectMySQL jdbc = new JDBConnectMySQL();
	int num;
	String title;
	String content;
	String id;
	// 테스트용 입력값 준비 
	for(int i = 1; i <= 100; i++){
		num = i;
		title = "제목" + Integer.toString(i);
		content = "내용" + Integer.toString(i);
		if(i % 2 == 1){
			id = "musthave1";
		} else {
			id = "musthave2";
		}

		// 쿼리문 생성
		String sql = "INSERT INTO board(num, title, content, id) VALUES (?, ?, ?, ?)";
		PreparedStatement psmt = jdbc.con.prepareStatement(sql);
		psmt.setInt(1, num);
		psmt.setString(2, title);
		psmt.setString(3, content);
		psmt.setString(4, id);
			
		// 쿼리 수행
		int inResult = psmt.executeUpdate();
		out.println(inResult + "행이 입력되었습니다.");
	}
	


	// 연결 닫기
	jdbc.close();
	
	%>
</body>
</html>
