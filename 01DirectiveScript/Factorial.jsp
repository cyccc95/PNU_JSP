<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int num = 0;
	int num2 = 0;
	int fac = 1;
	String snum = request.getParameter("num");
	String snum2 = request.getParameter("num2");
	if(
			snum != null && snum.equals("") == false
			&& snum2 != null && snum2.equals("") == false
	  ) {
			num = Integer.parseInt(snum);
			num2 = Integer.parseInt(snum2);
		}
%>
<%!
	public static int factorial(int num){
		int fac = 1;
		for(int i = 1; i <= num; i++){
			fac *= i;
		}
		return fac;
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<%
			out.println(num + "의 factorial은 " + factorial(num) + "입니다.");
		%>
	</div>
	<div>
		<%
			out.println(num2 + "의 factorial은 " + factorial(num2) + "입니다.");
		%>
	</div>

</body>
</html>