<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../main/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MemberJoin</title>
<style>
h2, #tdh {
	color: #A5732A;
}
</style>
<script type="text/javascript">
	function idCheck(id) {

		if (id == "") {
			window.alert("아이디를 입력하시오");
			document.MemberJoin.id.focus();
		} else {
			url = "IdCheck.jsp?id=" + id;
			window.open(url, "post", "width=300, height=150");

		}

	}
</script>
</head>
<body>
	<div align="center">
		<h2>회원 가입</h2>
		<div align="center">
			<font color=red>* 표시된 항목은 필수 항목입니다.</font>
		</div>
		<form action="MemberJoinProc.jsp" id="MemberJoin" name="MemberJoin">
			<table width="400" border="1">
				<tr height="50">
					<td id="tdh" width="100" align="center">아이디<font color=red>*</font></td>
					<td width="300">&nbsp; <input type="text" name="id" size="27" placeholder="id를 넣으세요">
					<input type="hidden" name="chk" size="40">
					<input type="button" style="color:#A5732A;" value="중복 체크" onclick="idCheck(this.form.id.value)">
					</td>
				</tr>

				<tr height="50">
					<td id="tdh" width="100" align="center">패스워드<font color=red>*</font></td>
					<td width="300">&nbsp; <input type="password" name="pwd1"
						size="40" placeholder="비밀번호는 숫자와 영어만 넣어주세요">
					</td>
				</tr>

				<tr height="50">
					<td id="tdh" width="100" align="center">패스워드 확인<font color=red>*</font></td>
					<td width="300">&nbsp; <input type="password" name="pass2"
						size="40">
					</td>
				</tr>

				<tr height="50">
					<td id="tdh" width="100" align="center">이름<font color=red>*</font></td>
					<td width="300">&nbsp; <input type="text" name="name"
						size="40">
					</td>
				</tr>

				<tr height="50">
					<td id="tdh" width="100" align="center">나이<font color=red>*</font></td>
					<td width="300">&nbsp;<input type="number" name="age" style="width:60px;">
					</td>
				</tr>

				<tr height="50">
					<td id="tdh" width="100" align="center">성별<font color=red>*</font></td>
					<td width="300">&nbsp; <input type="radio" name="gender"
						value="남자">남자&nbsp; <input type="radio" name="gender"
						value="여자">여자&nbsp;
					</td>
				</tr>

				<tr height="50">
					<td id="tdh" width="100" align="center">전화번호<font color=red>*</font></td>
					<td width="300">&nbsp; <select name="tel1"
						style="height: 27px;">
							<option value="010">010</option>
							<option value="011">011</option>
							<option value="016">016</option>
					</select>&nbsp;&nbsp;-&nbsp; <input type="text" name="tel2" size="5">&nbsp;&nbsp;-&nbsp;
						<input type="text" name="tel3" size="5">
					</td>
				</tr>

				<tr height="50">
					<td id="tdh" width="100" align="center">이메일</td>
					<td width="300">&nbsp; <input type="email" name="email"
						size="40">
					</td>
				</tr>

				<!-- <tr height = "50">
						<td id="tdh"width = "150" align="center">권한</td>
						<td width = "350" align="center">
						<input type="radio" name="admin" value="A" >관리자&nbsp;
						<input type="radio" name="admin" value="B" >일반회원&nbsp;
						</td>	
					</tr> -->

				<tr id="tdh" height="50">
					<td width="100" colspan="2" align="center"><input
						type="submit" onclick="return joincheck" value="회원가입"> <input
						type="reset" value="취소"></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><font color="red">${messagejoin}</font></td>
				</tr>
			</table>
		</form>
	</div>
	<%@ include file="../main/footer.jsp"%>
</body>
</html>