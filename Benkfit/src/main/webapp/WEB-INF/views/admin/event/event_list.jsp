<!-- 송운선 2019-01-22 17:43 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../Template/setting.jsp"%>
<html>
<head>
<style>
	td>a {
		color : black;
	}
	
	.inputButton {
		background: #FFD662;
	}
</style>
</head>
<body>
	<%@ include file="../../Template/top.jsp"%>

	<div
		style="margin-top: 200px; height: 18%; width: 100%; text-align: center;">
		<div style="display: inline-block; width: 60%; margin-top: 20px;">
			<h2>이벤트</h2>
			<br>
			<table class="table table-hover" style="width: 100%;">
				<thead>
					<tr style="background: #FFD662">
						<th style="width: 10%; text-align: center">No</th>
						<th style="width: 70%;">제목</th>
						<th style="width: 20%; text-align: center">등록일</th>
					</tr>
				</thead>
				<tbody>
					<c:if test="${cnt >= 1}">
						<c:forEach var="dto" items="${dtos}">
							<tr class="booklist">
								<td align="center">${dto.eve_num}</td>
								<td><a href="event_contentForm_sws?eve_num=${dto.eve_num}&pageNum=${pageNum}">${dto.eve_title}</a></td>
								<td align="center"><fmt:formatDate type="both" pattern="yyyy-MM-dd" value="${dto.eve_regDate}" /></td>
							</tr>
						</c:forEach>
					</c:if>

					<c:if test="${cnt == 0}">
						<tr>
							<td colspan="3" align="center">이벤트가 존재하지 않습니다.</td>
						</tr>
					</c:if>
				</tbody>
			</table>
		</div>
	</div>

	<!-- 페이지 컨트롤 -->
	<table style="width:1148px;" align="center">
		<tr>
			<th style="text-align: center; width: 100%">
				<!-- 게시글이 있으면 -->
				<c:if test="${cnt > 0}">
					<!-- 처음[ ◀◀ ]  / 이전[ ◀ ] 블록 -->
					<c:if test="${startPage > pageBlock}">
						<a href="event_list_sws">[◀◀ ]</a>
						<a href="event_list_sws?pageNum=${startPage - pageBlock}">[◀ ]</a>
					</c:if>
					
					<!-- 블록내의 페이지 번호 -->
					<c:forEach var="i" begin="${startPage}" end="${endPage}">
						<c:if test="${i == currentPage}">
							<span>[${i}]</span>
						</c:if>
						
						<c:if test="${i != currentPage}">
							<a href="event_list_sws?pageNum=${i}">[${i}]</a>
						</c:if>
					</c:forEach>
					
					<!-- 다음[ ▶]  /  마지막[ ▶▶] 블록 -->
					<c:if test="${pageCount > endPage}">
						<a href="event_list_sws?pageNum=${startPage + pageBlock}">[▶ ]</a>
						<a href="event_list_sws?pageNum=${pageCount}">[▶▶ ]</a>
					</c:if>
				</c:if>
			</th>
			
		</tr>
		<tr>
			<td align="center" style="padding-top: 10px;">
				<input class="inputButton" type="button" value="추가" onclick="window.location='event_addForm_sws'">
			</td>
		</tr>		
	</table>
	<%@ include file="../../Template/footer.jsp"%>
</body>
</html>