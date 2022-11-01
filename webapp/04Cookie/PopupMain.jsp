<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String popupMode = "on";

Cookie[] cookies = request.getCookies(); // 쿠키를 읽어 popupMode 값 설정
if (cookies != null) {
    for (Cookie c : cookies) {
        String cookieName = c.getName();
        String cookieValue = c.getValue();
        if (cookieName.equals("PopupClose")) { // PopupClose 쿠키가 존재하면
            popupMode = cookieValue; 			// popupMode 값 갱신
        }
    }
} 
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키를 이용한 팝업 관리</title>
<style>
    div#popup{
        position: absolute; top:100px; left:100px; color:yellow;  
        width:300px; height:100px; background-color:gray;
    }
    div#popup>div{
        position: relative; background-color:#ffffff; top:0px;
        border:1px solid gray; padding:10px; color:black;
    }
</style>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
$(function() {
    $('#closeBtn').click(function() {
        $('#popup').hide();
        var chkVal = $("input:checkbox[id=inactiveToday]:checked").val(); // 체크 여부, val() : 값을 읽어와서
        $.ajax({	// jQuery의 ajax() 함수로 비동기 요청
            url : './PopupCookie.jsp',	// 요청을 보낼 페이지의 URL
            type : 'get',				// 'get', 'post' 등 HTTP 메서드를 지정
            data : {inactiveToday : chkVal},	// 서버로 보낼 데이터
            dataType : "text",					// 서버로부터 받을 '응답' 데이터의 타입
            success : function(resData) { // 요청 성공 시 실행할 콜백 함수
                if (resData != '') location.reload(); // 응답 데이터가 없으면 페이지 새로고침
            }
        });
    });
});
</script>
</head>
<body>
<h2>팝업 메인 페이지</h2>
<%
    for (int i = 1; i <= 10; i++) {
        out.print("현재 팝업창은 " + popupMode + " 상태입니다.<br/>");
    }
    if (popupMode.equals("on")) {
%>
    <div id="popup">
        <h2 align="center">공지사항 팝업입니다.</h2>
        <div align="right"><form name="popFrm">
            <input type="checkbox" id="inactiveToday" value="1" />
            하루 동안 열지 않음
            <input type="button" value="닫기" id="closeBtn" />
        </form></div>
    </div>
<%
    }
%>
</body>
</html>