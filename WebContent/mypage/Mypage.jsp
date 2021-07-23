<%@page import="com.ezv.Dto.MemberVO"%>
<%@page import="com.ezv.Dao.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../main/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mypage</title>
<style>
h2,#tdh{
	color:#A5732A;
}
</style>
</head>
<body>
<%
	MemberDAO mdao = MemberDAO.getInstance();
%>
	<div align="center">
		<h2>회원 정보</h2>
		<table width="400" border="1">
			<tr height="50">
				<td id="tdh" align="center" width="150">아이디</td>
				<td width="250">&nbsp;${loginUser.getId()}</td>
			</tr>
			<tr   height="50">
				<td id="tdh" align="center" width="150">이름</td>
				<td width="250">&nbsp;${loginUser.getName()}</td>
			</tr>
			<tr  height="50">
				<td id="tdh"  align="center" width="150">나이</td>
				<td width="250">&nbsp;${loginUser.getAge()}</td>
			</tr>
			<tr  height="50">
				<td id="tdh"  align="center" width="150">성별</td>
				<td width="250">&nbsp;${loginUser.getGender()}</td>
			</tr>
			<tr  height="50">
				<td id="tdh"  align="center" width="150">전화번호</td>
				<td width="250">&nbsp;${loginUser.getTel1()}&nbsp;-&nbsp;${loginUser.getTel2()}&nbsp;-&nbsp;${loginUser.getTel3()}</td>
			</tr>
			<tr height="50">
				<td id="tdh"  align="center" width="150">이메일</td>
				<td width="250">&nbsp;${loginUser.getEmail()}</td>
			</tr>

			<tr id="tdh" height="50">
				<td align="center" colspan="2">
					<button type="button"
						onclick="location.href ='MemberUpdateForm.jsp?id=${loginUser.getId()}'">회원 수정</button>
					<button type="button"
						onclick="location.href ='MemberDeleteForm.jsp?id=${loginUser.getId()}'">회원 탈퇴</button>
					<button type="button" onclick="location.href ='../reservation/reservationResult.jsp'">예매 정보 보기</button>
				</td>
			</tr>
		</table>
	</div>
	<%@ include file="../main/footer.jsp"%>
</body>
</html>