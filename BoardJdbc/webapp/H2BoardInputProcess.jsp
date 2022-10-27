<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	// 1. 파라미터 읽기
		request.setCharacterEncoding("utf-8");
	
		String num = request.getParameter("num");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String id = request.getParameter("id");
		
		System.out.println(title + "," + content + "," + id);
		
	// 2. 데이터베이스 연결 및 기타
		// 드라이버 로드
		// Class.forName("com.mysql.cj.jdbc.Driver");
		Class.forName("org.h2.Driver");
		
		// 데이터베이스 연결
		// String dburl = "jdbc:mysql://localhost:3306/musthave";
		// String dbid = "musthave";
		// String dbpw = "tiger";
		
		 String dburl = "jdbc:h2:tcp://localhost/~/test";
		 String dbid = "sa";
		 String dbpw = "";
		
		Connection con = DriverManager.getConnection(dburl, dbid ,dbpw);
				
		// import 모르겠으면 복사해서 자바 파일에서 ctrl+shift+o로 import 자동으로 만든 뒤 복사
		// c드라이브 - programfile(*86) - mysql - connector j 8.0 - jar파일을 web-inf - lib 에 복사
		
		// PreparedStatement
		String sql = "insert into board(num,title,content,id) values(?,?,?,?)";
		PreparedStatement psmt = con.prepareStatement(sql);
		psmt.setInt(1, Integer.parseInt(num));
		psmt.setString(2, title);
		psmt.setString(3, content);
		psmt.setString(4, id);
		
	// 3. 데이터베이스 입력
		// query 실행
		int result = psmt.executeUpdate();
		
		psmt.close();
		con.close();
		
	// 4. 완료 메시지 출력
		if(result == 1){
			out.println("입력에 성공하였습니다.");
		} else {
			out.println("입력에 실패하였습니다.");
		}
	%>
	
	<br/>
	<br/>
	<h3>입력한 데이터</h3>
	<h5>num : <%= num %></h5>
	<h5>title : <%= title %></h5>
	<h5>content : <%= content %></h5>
	<h5>id : <%= id %></h5>
	<a href="H2BoardInputForm.jsp">입력창으로 돌아가기</a>
	
</body>
</html>