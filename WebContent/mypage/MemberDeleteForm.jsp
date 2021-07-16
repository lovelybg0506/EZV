<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../main/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MemberDeleteForm</title>
<style>
h2,#tdh{
	color:#A5732A;
}
</style>
</head>
<body>
<div align="center">
<h2>회원 탈퇴하기</h2>
<form action="MemberDeleteProc.jsp" method="post">
	<table width="400" border="1">
		<tr height = "50">
			<td align="center" width="150" id="tdh">아이디</td>
			<td width="250">&nbsp;<%=request.getParameter("id") %></td>
		</tr>
		
		<tr height = "50">
			<td align="center" width="150" id="tdh">패스워드</td>
			<td width="250">&nbsp;
				<input type="password" name="pwd1">
			</td>
		</tr>		
		
		<tr height = "50">
			<td align="center" colspan="2" id="tdh">
			<input type="hidden" name="id" value="<%=request.getParameter("id")%>">
			<input type="submit" value="회원 삭제하기">&nbsp;&nbsp;
		</tr>	
	</table>
</form>
</div>
<%@ include file="../main/footer.jsp"%>
</body>
</html>