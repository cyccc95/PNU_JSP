<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내장 객체 - request</title>
</head>
<body>
	<h2>1. 클라이언트와 서버의 환경정보 읽기</h2>
	<a href="./RequestWebInfo.jsp?eng=Hello&han=안녕">
		GET 방식 전송
	</a>
	<br />
	<form action="RequestWebInfo.jsp" method="post">
		영어 : <input type="text" name="eng" value="Bye" /><br />
		한글 : <input type="text" name="han" value="잘 가" /><br />
		<input type="submit" value="POST 방식 전송" />	
	</form>
	
	<h2>2. 클라이언트의 요청 매개변수 읽기</h2>
	<form action="RequestParameter.jsp" method="post">
		아이디 : <input type="text" name="id" value="" /><br />
		성별 : 
		<input type="radio" name="sex" value="man" />남자
		<input type="radio" name="sex" value="woman" checked="checked" />여자
		<br />
		관심사항 : 
		<input type="checkbox" name="favo" value="eco" />경제
		<input type="checkbox" name="favo" value="pol" checked="checked" />정치
		<input type="checkbox" name="favo" value="ent" />연예<br />
		자기소개 :
		<textarea name="intro" cols="30" rows="4"></textarea>
		<br />
		<input type="submit" value="전송하기" />
	</form>	
	
	<h2>3. HTTP 요청 헤더 정보 읽기</h2>
	<a href="RequestHeader.jsp">
		요청 헤더 정보 읽기
	</a>
	
</body>
</html>

<!-- 
내장 객체의 종류
  request : 클라이언트의 요청 정보를 저장
  response : 클라이언트의 요청에 대한 응답 정보를 저장
  out : JSP 페이지에 출력할 내용을 담는 출력 스트림
  session : 웹 브라우저 정보를 유지하기 위한 세션 정보를 저장
  application : 웹 어플리케이션 관련 컨텍스트 정보를 저장
  pageContext : JSP 페이지에 대한 정보를 저장
  page : JSP 페이지를 구현한 자바 클래스의 인스턴스
  config : JSP 페이지에 대한 설정 정보를 저장
  exception : 예외가 발생한 경우에 사용
 -->

