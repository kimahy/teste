<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../Template/setting.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>qrCode</title>
<style>
#qrstring {
	width: 100px;
	margin: 10px;
}
</style>
</head>
<body>
<%@ include file="../Template/top.jsp"%>
	<script type="text/javascript">
		$(document).ready(function() {
			$('#qrcode').hide();
		$('#createBtn').click(function() {
			$('#qrcode').show();
			// input에 입력하는 값들을 뽑아서 변수에 저장
			var m_strid = $('#m_strid').val();
			var m_name = $('#m_name').val();
			var m_phone = $('#m_phone').val();
			
			// encodeURIComponent로 인코딩 합시당. 
			m_strid = encodeURIComponent(m_strid);
			m_name = encodeURIComponent(m_name);
			m_phone = encodeURIComponent(m_phone);
			
			// 뒤에 코드가 길어지니까 그냥 한번 변수에 주소를 저장
			googleQRUrl = "https://chart.googleapis.com/chart?chs=177x177&cht=qr&chl=";
			
			// 이미지가 나타날 영역에 원하는 내용을 넣은 QR code의 이미지를 출력합니다.
			// 여기 주소 부분을 변경해주면 원하는 값을 언제든 맘대로
			$('#qrcode').attr('src', googleQRUrl + "&ID="+ m_strid + "&NAME="+ m_name
								+ "&HP="+ m_phone	+ '&choe=UTF-8');
		});
	});
	</script>
	<div class="wrapper">
		<h2>QRcode 카드발급</h2>
			<hr>
		<table border="1">
			<tr>
				<th>아이디</th>
				<td><input id="m_strid" value="${qrcode.c_id}" disabled></td>
			</tr>
			<tr>
				<th>이름</th>
				<td><input id="m_name" value="${qrcode.c_name}" disabled></td>
			</tr>
			<tr>
				<th>연락처</th>
				<td><input id="m_phone"value="${qrcode.c_hp}" disabled></td>
			</tr>
			<tr>
				<th colspan="3" id="qr_create">
					<button id="createBtn" class="btn2 btn2-Info">발급</button>
					<button class="btn2 btn2-danger">저장</button>
				</th>
			</tr>
			<tr>
				<th colspan="3">
					<img id="qrcode" src="" />
				</th>
			</tr>
		</table>
	</div>
	<%@ include file="../Template/footer.jsp"%>
</body>
</html>