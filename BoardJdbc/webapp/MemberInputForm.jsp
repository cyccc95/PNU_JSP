<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>MemberInputForm</h2>
	<form action="MemberInputProcess.jsp" method="post">
		<table>
			<tr>
				<td>id</td>
				<td><input type="text" name="id" /></td>
			</tr>
			<tr>
				<td>name</td>
				<td><input type="text" name="name" /></td>
			</tr>
			<tr>	
				<td>pass</td>
				<td><input type="text" name="pass" /></td>
			</tr>
			<tr>
				<td colspan="2"><input style="width:100%" type="submit" value="저장" /></td>
			</tr>
		</table>
	</form>
</body>
</html>