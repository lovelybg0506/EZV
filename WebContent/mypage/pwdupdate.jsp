<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../main/header.jsp" %>	
<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>pwdupdate</title>
<style>
h2,#tdh{
	color:#A5732A;
}
</style>
<script type="text/javascript">
	function input_check() {
		var now_pw = document.pwdupdate.now_pw;
		var change_pw = document.pwdupdate.change_pw;
		var change_pw_check = document.pwdupdate.change_pw_check;

		if (now_pw.value == null || change_pw.value == null || change_pw_check.value == null
				|| now_pw.value == "" || change_pw.value == "" || change_pw_check.value == "") {
			window.alert("공백은 허용치 않습니다");
			return false;
		}else if ( change_pw.value != change_pw_check.value ) {
            window.alert("비밀번호가 맞지 않습니다");
            return false;
        }else{
        	document.pwdupdate.action = "../mypage/pwdupdatecheck.jsp"

    		document.pwdupdate.submit();
        }
	}
</script>
</head>
<body>
	<div align="center">
		<h2>비밀번호 변경</h2>
		<form action="../mypage/pwdupdatecheck.jsp" method="post" id="pwdupdate"
			name="pwdupdate">
			<table width="400" border="1">
				<tr height="50" align="center">
					<td align="center" width="150" id="tdh">현재 비밀번호</td>
					<td width="250"><input id="now_pw" name="now_pw"
						type="password"></td>
				</tr>
				<tr height="50" align="center">
					<td align="center" width="150" id="tdh">새 비밀번호</td>
					<td width="250"><input id="change_pw" name="change_pw"
						type="password"></td>
				</tr>
				<tr height="50" align="center">
					<td align="center" width="150" id="tdh">확인</td>
					<td width="250"><input id="change_pw_check"
						name="change_pw_check" type="password"></td>
				</tr>
				<tr height="50">
					<td align="center" colspan="2" id="tdh">
						<input type="button" value="비밀번호 수정" onclick="input_check();">
						<input type="reset" value="취소"></td>
				</tr>
			</table>
		</form>
	</div>
<%@ include file="../main/footer.jsp" %>
</body>
</html>