<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ include file="../Template/setting.jsp" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>정보수정</title>
</head>
<body>
	<%@ include file ="../Template/top.jsp" %>
		<div class="wrapper">
			<table class="upinfo">
				<tr>
					<th>서류 번호</th>
					<td><input type="text"></td>
				</tr>
				<tr>
					<th>서류 명</th>
					<td><input type="text"></td>
				</tr>
				<tr>
					<th>서류 내용</th>
					<td><input type="text"></td>	
				</tr>
				<tr>
					<th>서류 날짜</th>
					<td><input type="text"></td>	
				</tr>
			</table>			
		</div>
	<%@ include file ="../Template/footer.jsp" %>

</body>
</html>