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
	//이전버튼 이벤트
	function fn_prev(page,range,rangeSize){
		var page = ((range-2)*rangeSize)+1;
		var range =range -1;
		
		var url ="${pageContext.request.contextPath}/board/BoardList";
		url = url +"?page="+page;
		url = url +"&range="+range;
		
		location.href=url;
	}
	//페이지버튼 클릭
	function fn_pagination(page,range,rangeSize,searchType,keyword){
		var url="${pageContext.request.contextPath}/board/getBoardList";
		url = url +"?page="+page;
		url = url +"&range="+range;
		
		location.href=url;
	}
	//이전버튼 이벤트
	function fn_next(page,range,rangeSize){
		var page = parseInt((range * rangeSize)+1);
		var range =parseInt(range) +1;
		
		var url ="${pageContext.request.contextPath}/board/getBoardList";
		url = url +"?page="+page;
		url = url +"&range="+range;
		
		location.href=url;
	}
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
			<div id = "paginationBox">
				<ul class="pagination">
					<c:if test ="${pagination.prev }">
						<li class="page-item"><a class="page-link" href="#" onclick="fn_prev('${pagination.page}','${pagination.range}','${pagination.rangeSize}')">Prev</a></li>
					</c:if>
					<c:forEach begin="${pagination.startPage }" end="${pagination.endPage }" var="idx">
						<li class="page-item <c:out value="${pagination.page == idx?'active':'' }"/>">
						<a class="page-link" href="#" onclick="fn_pagination('${idx}','${pagination.range }','${pagination.rangeSize }')">${idx}</a>
						</li>
					</c:forEach>
					
					<c:if test="${pagination.next }">
						<li class="page-item"><a class="page-link" href="#" onclick="fn_next('${pagination.range }','${pagination.range }','${pagination.rangeSize }')">Next</a></li>
					</c:if>
				</ul>
			</div>
		</div>
	</article>
</body>

</html>
