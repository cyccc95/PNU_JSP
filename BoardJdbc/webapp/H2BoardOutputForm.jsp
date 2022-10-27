<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.domain.BoardDTO" %>



<%
	//2. 데이터베이스 연결 및 기타
		// 드라이버 로드
		List<BoardDTO> list = new ArrayList<>();
		Class.forName("org.h2.Driver");
		
		// 데이터베이스 연결
		String dburl = "jdbc:h2:tcp://localhost/~/test";
		String dbid = "sa";
		String dbpw = "";
		Connection con = DriverManager.getConnection(dburl, dbid ,dbpw);
		// import 모르겠으면 복사해서 자바 파일에서 ctrl+shift+o로 import 자동으로 만든 뒤 복사
		// c드라이브 - programfile(*86) - mysql - connector j 8.0 - jar파일을 web-inf - lib 에 복사
		
		// Statement
		Statement st = con.createStatement();

		// query 실행
		ResultSet rs = st.executeQuery("select * from board order by num ASC limit 10"); // 오름차순으로 정렬해서 앞에서 10개만 선택	
		
		// 실행 결과를 객체 리스트에 저장
		while(rs.next()){
			list.add(new BoardDTO(
					rs.getInt("num"),
					rs.getString("content"),
					rs.getString("title"),
					rs.getString("id"),
					rs.getString("postdate"),
					rs.getInt("visitcount")
					));
		}
		
		rs.close();
		st.close();
		con.close();
	
%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<table border="1">
			<tr>
				<td>num</td>
				<td>title</td>
				<td>content</td>
				<td>id</td>
				<td>postdate</td>
				<td>visitcount</td>
			</tr>
	<%
		for(BoardDTO b : list){
			//out.println(b.toString() + "<br/>");
	%>
			<tr>
				<td><%= b.getNum()%></td>
				<td><%= b.getTitle()%></td>
				<td><%= b.getContent()%></td>
				<td><%= b.getId()%></td>
				<td><%= b.getPostdate()%></td>
				<td><%= b.getVisitcount()%></td>
			</tr>		
	<%
		}	
	%>			
		</table>
</body>
</html>