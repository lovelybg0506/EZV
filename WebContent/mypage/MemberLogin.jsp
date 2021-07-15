<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../main/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
<style>
#tdh, h2 {
	background-color: #FFF;
	color: #A5732A;
}
</style>
<script type="text/javascript">
	function loginCheck() {
		var id = document.MemberLogin.id;
		var pwd1 = document.MemberLogin.pwd1;

		if (id.value == "") {
			window.alert("아이디를 입력하시오");
			document.MemberLogin.id.focus();

			return false;
		} else if (pwd1.value == "") {
			window.alert("암호를 입력하세요");
		} else {
			document.MemberLogin.action = "../mypage/MemberLoginProc.jsp"

			document.MemberLogin.submit();
		}
	}
</script>
</head>
<body>
	<h2 align="center">로그인</h2>
	<form action="MemberLoginProc.jsp" id="MemberLogin"
		name="MemberLogin" onsubmit="loginCheck();">
		<table align="center">
			<tr>
				<td id="tdh">아이디&nbsp;</td>
				<td><input type="text" id="id" name="id"></input></td>
			</tr>

			<tr>
				<td id="tdh">&nbsp;암&nbsp;&nbsp;&nbsp;호&nbsp;&nbsp;</td>
				<td><input type="password" id="pwd1" name="pwd1"></input></td>
			</tr>


			<!-- <tr>
         <td></td>
         <td><input type="radio" name="admin" value="A">관리자&nbsp;
            <input type="radio" name="admin" value="B">일반회원&nbsp;</td>
      </tr> -->

			<tr>
				<td id="tdh" colspan="2" align="center"><br> <!--       <button type="submit">로그인</button>&nbsp;&nbsp; -->
					<input type="button" value="로그인" onclick="loginCheck();"></input> <!--        <button type="reset">취소</button>&nbsp;&nbsp; -->
					<input type="reset" value="취소"></input> <a href="MemberJoin.jsp"><button
							type="button">회원가입</button></a></td>
			</tr>
		</table>
	</form>
	<div align="center" style="color: red;">${message}</div>
	<div align="center" style="color: blue;">${messagejoin}</div>
	<%@ include file="../main/footer.jsp"%>
</body>
</html>