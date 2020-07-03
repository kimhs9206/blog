<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
    <%@include file='/WEB-INF/views/rayout/rayoutHeader.jsp' %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
</head>
<script>
	function fn_contentView(bid){
		var url="${pageContext.request.contextPath}/board/getBoardContent";
		url = url+'?bid='+bid;
		
		location.href=url;
	}
	$(document).on('click','#writeBtn',function(e){
		e.preventDefault();
		location.href="${pageContext.request.contextPath }/board/boardForm";
	})
</script>
<body>
	<article>
		<div class="container">
			<div class="table-responsive">
				<h2>게시판 목록</h2>
				<table class="table table-striped table-sm">
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>작성자</th>
						<th>조회수</th>
						<th>등록일</th>
					</tr>
						<c:choose>
							<c:when test="${empty boardList }">
								<td colspan ="5" align="center">게시물이 없습니다!</td>
							</c:when>
							<c:when test="${!empty boardList }">
								<c:forEach var="list" items="${boardList}">
									<tr>
										<td><c:out value="${list.bid }"/></td>
										<td>
											<a href="#" onClick="fn_contentView(<c:out value="${list.bid }"/>)">
											<c:out value="${list.title }"/>
											</a>	
										</td>
										<td><c:out value="${list.reg_id }"/></td>
										<td><c:out value="${list.view_cnt }"/></td>
										<td><c:out value="${list.reg_dt }"/></td>
									</tr>
								</c:forEach>
							</c:when>
						</c:choose>
				</table>
				<button class="btn btn-primary" id="writeBtn">글쓰기</button>
			</div>
		</div>
	</article>
</body>

</html>
