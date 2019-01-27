<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../Template/setting.jsp"%>
<!DOCTYPE html>
<html lang="ko-KR">
<head>
<meta charset="UTF-8">
<title>회원정보수정-폼</title>
</head>
<body>
	<%@ include file="../Template/top.jsp"%>
	<div class="wrapper">
		<h2>정보수정</h2>
		<hr>
		<table class="upinfo">
			<tr>
				<th>id</th>
				<td><input type="text" required></td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td><input type="text"></td>
			</tr>
			<tr>
				<th>고객등급</th>
				<td><input type="text" class="" required></td>
			</tr>
			<tr>
				<th>이름</th>
				<td><input type="text" required></td>
			</tr>
			<tr>
				<th>연락처</th>
				<td><input type="text"></td>
			</tr>
			<tr>
				<th>우편번호</th>
				<td><input type="text"></td>
			</tr>
			<tr>
				<th>주소</th>
				<td><input type="text"></td>
			</tr>
			<tr>
				<th>주민번호1 + 주민번호2</th>
				<td><input type="text" required></td>
			</tr>
			<tr>
				<th>이메일</th>
				<td><input type="text"></td>
			</tr>
			<tr>
				<th>가입날짜</th>
				<td><input type="text" required></td>
			</tr>
		</table>
	</div>
	<%@ include file="../Template/footer.jsp"%>
</body>
</html>