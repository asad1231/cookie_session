<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키 로그인 폼</title>
<script src="../js/jquery.js"></script>
<script type="text/javascript">
	function login_check(){
		if($.trim($("#login_id").val())==''){
			alert('로그인 아이디를 입력하세요!');
			$('#login_id').val('').focus();
			return false;
		}
		
		if($.trim($('#login_pwd').val()) == ''){
			alert('로그인 비번을 입력하세요!');
			$('#login_pwd').val('').focus();
			return false;
		}
	}
</script>
</head>
<body>
<h2>쿠키 로그인 폼 연습</h2>
<form action="cookie_LoginOK.jsp" method="post" onsubmit="return login_check();">
 아이디:<input type="text" name="login_id" id="login_id" size="14" tabindex="1">
<%-- tabindex="1"속성을 지정하면 탭키를 눌렀을 때 첫번째로 포커스를 가진다. --%>
비밀번호: <input type="password" name="login_pwd" id="login_pwd" size="14" tabindex="2">
 <input type="submit" value="로그인"> 
</form>
</body>
</html>