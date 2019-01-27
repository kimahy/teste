<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../Template/setting.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>계좌조회</title>
</head>
<body>
	<%@ include file="../Template/top.jsp"%>
	<div class="wrapper">
		<h2>예금계좌조회</h2>
		<hr>
		<form name="sel_account" method="post">
			<table class="upinfo">
				<tr>
					<th>예금 계좌번호</th>
					<td><input type="text"></td>
				</tr>
				<tr>
					<th>조회기간</th>
					<td><input type="date"> ~ <input type="date"></td>
				</tr>
				<tr>
					<th>조회기간</th>
					<td>
					<input type="radio">전체 
					<input type="radio">입금 
					<input type="radio">출금
					</td>
				</tr>
				<tr>
					<th>조회결과 순거</th>
					<td><input type="radio"/>최근거래순
					 	<input type="radio"/>과거거래순
					</td>
				</tr>
				<tr>
					<th colspan="2">
					<button class="btn2 btn2-success">조회</button>
					</th>
				</tr>
			</table>
			<h2>계좌정보</h2>
			<hr>
			<table class="upinfo">
				<tr>
					<th>계좌명</th>
					<td></td>
					<th>가입날짜</th>
					<td><input type="text"></td>
				</tr>
				<tr>
					<th>고객명</th>
					<td></td>
					<th>계좌번호</th>
					<td></td>
				</tr>
				<tr>
					<th>계좌잔액</th>
					<td><input type="text"></td>
					<th>출금가능금액</th>
					<td></td>
				</tr>
			</table>
			<h2>거래내역</h2>
			<table class="upinfo">
				<tr>
					<th>입금합계</th>
					<td>0</td>
					<th>출금합계</th>
					<td>10000</td>
				</tr>
			</table>
			<br><br>
			<table class="upinfo">
				<tr>
					<th>거래일자</th>
					<th>거래시간</th>
					<th>적요</th>
					<th>출금(원)</th>
					<th>입금(원)</th>
					<th>내용</th>
					<th>잔액(원)</th>
					<th>거래점</th>
				</tr>
				<tr>
					<td>2019-01-25</td>
					<td>14:04:23</td>
					<td>체크</td>
					<td>6000</td>
					<td></td>
					<td>N_김치찌개</td>
					<td>123,455</td>
					<td>원신한</td>
				</tr>
			</table>
		</form>
	</div>
	<%@ include file="../Template/footer.jsp"%>
</body>
</html>