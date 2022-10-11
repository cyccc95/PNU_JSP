<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int money = 0;
	String sMoney = request.getParameter("money");
	if(sMoney != null && sMoney.equals("") == false){
		money = Integer.parseInt(sMoney);
	}
%>
<%!
	public String moneycount(int money){
		int discountMoney = money/1000*1000;
		int a = 0;
		int b = 0;
		int c = 0;
		int d = 0;
		
		if(discountMoney >= 50000) {
			a = discountMoney / 50000;
			discountMoney %= 50000;
		}
		if(discountMoney >= 10000) {
			b = discountMoney / 10000;
			discountMoney %= 10000;
		}
		if(discountMoney >= 5000) {
			c = discountMoney / 5000;
			discountMoney %= 5000;
		}
		if(discountMoney >= 1000) {
			d = discountMoney / 1000;
		}
		
		return "가격 : " + money + "원<br/>5만원 : " + a + "장<br/>1만원 : "
				+ b + "장<br/>5천원 : " + c + "장<br/>1천원 : " + d + "장";
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2><%= moneycount(money) %></h2>
</body>
</html>