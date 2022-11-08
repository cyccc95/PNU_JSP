<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
pageContext.setAttribute("scopeValue", "페이지 영역");
request.setAttribute("scopeValue", "리퀘스트 영역");
session.setAttribute("scopeValue", "세션 영역");
application.setAttribute("scopeValue","애플리케이션 영역");
%>     
<html>
<meta charset="UTF-8">
<head><title>표현 언어(EL) - 내장 객체</title></head>
<body>
    <h2>ImplicitObjMain 페이지</h2>
    <h3>각 영역에 저장된 속성 읽기</h3>
    <ul>
        <li>페이지 영역 : ${ pageScope.scopeValue }</li>
        <li>리퀘스트 영역 : ${ requestScope.scopeValue }</li>
        <li>세션 영역 : ${ sessionScope.scopeValue }</li>
        <li>애플리케이션 영역 : ${ applicationScope.scopeValue }</li>
    </ul>

    <h3>영역 지정 없이 속성 읽기</h3>
    <ul>
        <li>${ scopeValue }</li> 
    </ul>
    
    <jsp:forward page="ImplicitForwardResult.jsp" />
<!--     페이지 영역 표시 안됨 -->
<%--     <% response.sendRedirect("ImplicitForwardResult.jsp"); %> --%>
<!--      페이지, 리퀘스트 영역 표시 안됨 -->
    <%--
    	forward 방식 : 웹 컨테이너 차원의 페이지 이동, 웹 브라우저는 다른 페이지로 이동했을을 알 수 없고,
    				  브라우저에 최초 호출한 URL이 표시된다.
   			1. 최초 요청 (클라이언트 -> request -> URL1)
   			2. forward (URL1 -> forward -> URL2)
     		3. 응답 (URL2 -> response -> 클라이언트)
     	
     	redirect 방식 : 다른 웹 컨테이너에 있는 주소로 이동 가능, 웹 브라우저는 URL을 지시된 주소로 바꾸고 그 주소로 이동
     		1. 최초 요청 (클라이언트 -> request1 -> URL1)
     		2. redirect할 새로운 URL2 리턴 (URL1 -> request -> 클라이언트)
     		3. URL2 요청 (클라이언트 -> request2 -> URL2)
     		4. 응답 (URL2 -> response -> 클라이언트)
     		
     	forward와 redirect 차이점
     		forward
     			JSP 액션 태그이다.
     			요청 정보가 유지된다.
     			URL이 변화하지 않는다.
     			request 객체를 재사용한다.
     			시스템 변화가 생기지 않는 요청에 적합(검색 등의 단순 조회)
     		sendRedirect
     			JSP 내장 객체이다. (response)
     			새로운 요청이 수행된다.
     			URL이 변화한다.
     			request 객체를 재사용하지 않는다.(새로운 요청)
     			시스템에 변화가 생기는 요청에 적합(로그인, 글쓰기 등)
     --%>
</body>
</html>