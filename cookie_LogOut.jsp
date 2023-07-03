<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="util.Cookies" %>
<%
	response.addCookie(Cookies.createCookie("AUTH", "","/",0));//쿠키이름, 값, 경로, 유효시간을 0으로 
	//설정해서 쿠키만료 즉 로그아웃 시킴. 
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
 <h2 style="color:red;">로그아웃 되었습니다!</h2>
</body>
</html>