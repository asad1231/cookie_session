<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="util.Cookies" %>
<%
	request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("login_id");
	String pwd = request.getParameter("login_pwd");
	
	if(id.equals(pwd)){//아이디와 비번이 같은 경우 로그인 인증 된걸로 판단
		response.addCookie(Cookies.createCookie("AUTH", id, "/", -1));//쿠키이름, 값, 경로, 유효기간을 가진 쿠키 추가
		
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<h2>로그인 성공!</h2>
	<h3 style="color: red;">로그인에 성공했습니다.</h3>
</body>
</html>
<%}else{
	out.println("<script>");
	out.println("alert('로그인에 실패 했습니다!');");
	out.println("history.go(-1);");//뒤로 한칸 이동
	out.println("</script>");
}
%>