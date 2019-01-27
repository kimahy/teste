<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../Template/setting.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>대출계좌조회</title>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.4.1/js/mdb.min.js"></script>
</head>
<body>
	<%@ include file="../Template/top.jsp"%>
	<div class="wrapper">
		<h2>대출계좌</h2>
		<hr>
		<form name="loan_account" method="post">
			<table class="upinfo">
				<tr>
					<th>대출 계좌번호</th>
					<td><input type="text" ></td>
				</tr>
				<tr>
					<th>대출 금액</th>
					<td><input type="text" ></td>
				</tr>
				<tr>
					<th>대출 잔액</th>
					<td><input type="text" ></td>
				</tr>
				<tr>
					<th>가입날짜</th>
					<td><input type="text" ></td>
				</tr>
				<tr>
					<th>만기</th>
					<td><input type="text" ></td>
				</tr>
				<tr>
					<th>연체 기간</th>
					<td><input type="text" ></td>
				</tr>
				<tr>
					<th>금리</th>
					<td><input type="text" ></td>
				</tr>
			</table>
		</form>
	</div>

	<%@ include file="../Template/footer.jsp"%>
</body>
</html>