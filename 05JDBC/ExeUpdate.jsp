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

	// 테스트용 입력값 준비 
	String id = "test6";
	String pass = "6666";
	String name = "테스트6회원";

//	String type = "입력질의";
//	String type = "수정질의";
	String type = "입력수정질의";

	try {
		if (type.equals("입력질의")) {
			String sql = "INSERT INTO member(id, pass, name) VALUES (?, ?, ?)";
			PreparedStatement psmt = jdbc.con.prepareStatement(sql);
			psmt.setString(1, id);
			psmt.setString(2, pass);
			psmt.setString(3, name);
			// 질의 실행
			int inResult = psmt.executeUpdate();
			System.out.println(inResult + "행이 입력되었습니다.");
			out.println(inResult + "행이 입력되었습니다.");
		} else if (type.equals("수정질의")) {
			String sql = "UPDATE member SET pass=?, name=? WHERE id=?";
			PreparedStatement psmt = jdbc.con.prepareStatement(sql);
			psmt.setString(1, pass);
			psmt.setString(2, name);
			psmt.setString(3, id);
			// 질의 실행
			int inResult = psmt.executeUpdate();
			System.out.println(inResult + "행이 수정되었습니다.");
			out.println(inResult + "행이 수정되었습니다.");
		} else {
			String sql = "INSERT INTO member(id, pass, name) VALUES (?, ?, ?) ON DUPLICATE KEY UPDATE pass=?, name=?";
			PreparedStatement psmt = jdbc.con.prepareStatement(sql);
			psmt.setString(1, id);
			psmt.setString(2, pass);
			psmt.setString(3, name);
			psmt.setString(4, pass);
			psmt.setString(5, name);
			// 질의 실행
			int inResult = psmt.executeUpdate();
			System.out.println(inResult + "행이 처리되었습니다.");
			out.println(inResult + "행이 처리되었습니다.");
		}
	} catch (Exception e) {
		System.out.println(e.getMessage());
		out.println("에러가 발생하였습니다.");
	} finally {
		// 연결 닫기
		jdbc.close();
	}
	%>
</body>
</html>
