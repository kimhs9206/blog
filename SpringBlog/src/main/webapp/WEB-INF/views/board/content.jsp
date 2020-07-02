<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
</head>
<body>
	<h2>게시판 목록</h2>
	<table>
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
							<td><c:out value="${list.title }"/></td>
							<td><c:out value="${list.reg_id }"/></td>
							<td><c:out value="${list.view_cnt }"/></td>
							<td><c:out value="${list.reg_dt }"/></td>
						</tr>
					</c:forEach>
				</c:when>
			</c:choose>
	</table>
	<a href="${pageContext.request.contextPath }/board/boardForm">글쓰기</a>
</body>

</html>
