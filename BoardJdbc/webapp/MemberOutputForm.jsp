<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.domain.MemberDTO" %>


<%!
	List<MemberDTO> list = new ArrayList<>();
%>

<%
	//2. 데이터베이스 연결 및 기타
		// 드라이버 로드
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		// 데이터베이스 연결
		String dburl = "jdbc:mysql://localhost:3306/musthave";
		String dbid = "musthave";
		String dbpw = "tiger";
		Connection con = DriverManager.getConnection(dburl, dbid ,dbpw);
		// import 모르겠으면 복사해서 자바 파일에서 ctrl+shift+o로 import 자동으로 만든 뒤 복사
		// c드라이브 - programfile(*86) - mysql - connector j 8.0 - jar파일을 web-inf - lib 에 복사
		
		// Statement
		Statement st = con.createStatement();

		// query 실행
		ResultSet rs = st.executeQuery("select * from member order by id ASC limit 10"); // 오름차순으로 정렬해서 앞에서 10개만 선택	
		
		// 실행 결과를 객체 리스트에 저장
		while(rs.next()){
			list.add(new MemberDTO(
					rs.getString("id"),
					rs.getString("name"),
					rs.getString("pass"),
					rs.getString("regidate")
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
				<td>id</td>
				<td>name</td>
				<td>pass</td>
				<td>regidate</td>
			</tr>
	<%
		for(MemberDTO b : list){
			//out.println(b.toString() + "<br/>");
	%>
			<tr>
				<td><%= b.getId()%></td>
				<td><%= b.getName()%></td>
				<td><%= b.getPass()%></td>
				<td><%= b.getRegidate()%></td>
			</tr>		
	<%
		}	
	%>			
		</table>
</body>
</html>