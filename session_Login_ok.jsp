<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");//post로 전달되는 한글을 안깨지게 한다.
	
	String id = request.getParameter("login_id");
	String pwd = request.getParameter("login_pwd");
	
	if(id.equals(pwd)){//아이디와 비번 내용물만 같아도 참, 객체주소는 비교안함.
		session.setAttribute("id", id);//세션 id 속성 키이름에 아이디값 저장
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 성공</title>
</head>
<body>
<h3>로그인에 성공했습니다!</h3>
</body>
</html>
<%
	}else{
		out.println("<script>");
		out.println("alert('로그인에 실패 했습니다!');");
		out.println("history.back();");//history.go(-1); 과 같다. 뒤로 한칸 이동
		out.println("</script>");
	}
%>