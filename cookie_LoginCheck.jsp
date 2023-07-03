<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="util.Cookies" %>
<%
	Cookies cookies = new Cookies(request);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
 <h2>쿠키 로그인 여부 판단</h2>
 <%
 	if(cookies.exists("AUTH")){
 		out.println("아이디 '"+cookies.getValue("AUTH")+"' 로그인 한 상태");
 		//getValue("AUTH") 메서드로 AUTH 쿠키이름에 대한 쿠키값을 구함
 	}else{
 		out.println("<stong style='color:red;'>로그인 되지 않은 상태</strong>");
 	}
 %>
</body>
</html>