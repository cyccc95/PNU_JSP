<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int a = 0;
	int b = 0;
	String sa = request.getParameter("a");
	String sb = request.getParameter("b");
	if(
			sa != null && sa.equals("") == false
			&& sb != null && sb.equals("") == false
	  ){
			a = Integer.parseInt(sa);
			b = Integer.parseInt(sb);
	}
%>
<%!
	public static String gcdlcm(int a, int b){
		int max, min;
		int gcd = 0;
		int lcm = 0;
		if(a >= b){
			max = a;
			min = b;
		} else {
			max = b;
			min = a;
		}
		int rem;
		while(max % min >= 0){
			rem = max % min;
			if(rem == 0){
				gcd = min;
				lcm = a*b/gcd;
				break;
			} else {
				max = min;
				min = rem;
			}
		}
		return a + "와 " + b + "의 최대공약수 : " + gcd + ", 최소공배수 : " + lcm + "입니다.";
	
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
		<%= gcdlcm(a,b) %>
	</h2>

</body>
</html>