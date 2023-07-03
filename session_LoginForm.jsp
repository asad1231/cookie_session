<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션로그인 폼</title>
<script src="../js/jquery.js"></script>
<script type="text/javascript">
//type속성을 생략해도 웹브라우저가 기본값으로 자바스크립트로 인식한다.
function loginCheck(){
	if($.trim($("#login_id").val()) == ""){
		alert("로그인 아이디를 입력하세요!");
		$("#login_id").val("").focus();
		return false;
	}
	
	$login_pwd=$.trim($("#login_pwd").val());
	
	if($login_pwd.length == 0){
		alert("로그인 비번을 입력하세요!");
		$("#login_pwd").val("").focus();
		return false;
	}
}
</script>

</head>
<body>
<form action="session_Login_ok.jsp" method="post" onsubmit="return loginCheck();">
 <table border="1">
  <tr>
   <th>아이디</th>
   <td> <input type="text" name="login_id" id="login_id" tabindex="1"> </td>
   <%-- tabindex="1"로 사용하면 탭키를 눌렀을때 첫번째로 포커스를 가진다. --%>
   <th rowspan="2"> <%-- rowspan="2"로 설정해서 2개행을 합침 --%>
    <input type="submit" value="로그인">
   </th>
  </tr>
  <tr>
   <th>비밀번호</th>
   <td> <input type="password" name="login_pwd" id="login_pwd" tabindex="2"> </td>
  </tr>
 </table>
</form>
</body>
</html>