<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int dan = 1;
	String sDan = request.getParameter("dan");
	if(sDan != null && sDan.equals("") == false){
		dan = Integer.parseInt(sDan);
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>
	<%
	for (int i = 2; i < 10; i+=dan) {
		for (int j = 1; j < 10; j++) {
			for (int k = i; k < i+dan; k++) {
				if(k > 9) break;
				out.print(k + " * " + j + " = " + j*k + "\t");
			}
			out.print("<br/>");
		}
		out.print("<br/>");
	}
	%>
	</h2>
</body>
</html>