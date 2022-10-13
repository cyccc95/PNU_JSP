<%@ page import="common.Person" %> 
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% // 속성 저장
pageContext.setAttribute("pageInteger", 1000);
pageContext.setAttribute("pageString", "페이지 영역의 문자열");
pageContext.setAttribute("pagePerson", new Person("한석봉", 99));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>page 영역</title>
</head>
<body>
	<h2>page 영역의 속성값 읽기</h2>
	<% // 속성 읽기
	int pInteger = (Integer)(pageContext.getAttribute("pageInteger"));
	String pString = pageContext.getAttribute("pageString").toString();
	Person pPerson = (Person)(pageContext.getAttribute("pagePerson"));
	%>
	<ul>
		<li>Integer 객체 : <%= pInteger %></li>
		<li>String 객체 : <%= pString %></li>
		<li>Person 객체 : <%= pPerson.getName() %>, <%= pPerson.getAge() %></li>
	</ul>
	
	<h2>include된 파일에서 page 영역 읽어오기</h2>
	<%@ include file="PageInclude.jsp" %>
	<%-- include로 포함 관계이므로 같은 페이지가 됨. 따라서 page 영역이 그대로 유지됨. --%>
	
	<h2>페이지 이동 후 page 영역 읽어오기</h2>
	<a href="PageLocation.jsp">PageLocation.jsp 바로가기</a>
	<!-- 	값 없음 3개 출력 -->
</body>
</html>

<!-- 
	page 영역 : 동일한 페이지에서만 공유됩니다. 페이지를 벗어나면 소멸됩니다.
	request 영역 : 하나의 요청에 의해 호출된 페이지와 포워드(요청 전달)된 페이지까지 공유됩니다.
	session 영역 : 클라이언트가 처음 접속한 후 웹 브라우저를 닫을 때까지 공유됩니다.
	application 영역 : 한 번 저장되면 웹 어플리케이션이 종료될 때까지 유지됩니다.
	
	void setAttribute(String name, Object value)
		각 영역에 속성을 저장
		첫 번째 인수는 속성명, 두 번째 인수는 저장할 값
		값의 타입은 Object이므로 모든 타입의 객체를 저장할 수 있음
	Object getAttribute(String name)
		영역에 저장된 속성값을 가져옴
		Object로 자동 형변환되어 저장되므로 원래 타입으로 형변환 후 사용해야함
	void removeAttribute(String name)
		영역에 저장된 속성을 삭제
		삭제할 속성명이 존재하지 않더라도 에러는 발생하지 않음
	
	page 영역은 기본적으로 클라이언트의 요청을 처리하는데 관여하는 JSP 페이지마다 하나씩 생성됨.
	이 때 각 JSP 페이지는 page 영역을 사용하기 위한 pageContext 객체를 할당 받음.
 -->