<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../main/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
<script type="text/javascript" src="script/member.js"></script>
<style>
#tdh,h2{
	background-color:#FFF;
	color:#A5732A;
	}
</style>
</head>
</head>
<body>
<h2 align = "center">로그인</h2>
<form action = "MemberLoginProc.jsp" >
	<table align="center">
		<tr>
			<td id="tdh">아이디 : &nbsp;</td>
			<td><input type="text" name="id"></td>
		</tr>
		
		<tr>
			<td id="tdh">&nbsp;암&nbsp;&nbsp;&nbsp;호&nbsp; : &nbsp;</td>
			<td><input type="password" name="pwd1"></td>
		</tr>
		
		<tr>
			<td></td>
			<td><input type="radio" name="admin" value="A">관리자&nbsp;
				<input type="radio" name="admin" value="B">일반회원&nbsp;</td>
		</tr>
		
		<tr>
			<td id="tdh" colspan="2" align="center">
			<a href="return loginCheck()"><button type="submit">로그인</button></a>&nbsp;&nbsp;
			<button type="reset">취소</button>&nbsp;&nbsp;
			<a href="MemberJoin.jsp"><button type="button" >회원가입</button></a>
			<!-- 	<input type = "submit" class=".btn-sm" value="로그인" onclick="return loginCheck()">&nbsp;&nbsp;
				<input type = "reset" class=".btn-sm" value="취소">&nbsp;&nbsp;
				<input type = "button" class=".btn-sm" value="회원가입" onclick="location.href='MemberJoin.jsp'"> -->
			</td>	
		</tr>
		<tr>
			<td colspan="2" align="center"><font color="red">${message}</font></td>
		</tr>
	</table>
</form>
<%@ include file="../main/footer.jsp" %>
</body>
</html>