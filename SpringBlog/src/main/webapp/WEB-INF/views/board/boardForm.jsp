<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="${pageContext.request.contextPath }/board/insertBoard" method="post">
	<table>
		<tr>
			<td>제목</td>
			<td><input type="text" name="title"></td>
		</tr>
		<tr>
			<td>작성자</td>
			<td><input type="text" name="reg_id"></td>
		</tr>
		<tr>
			<td>카테고리</td>
			<td><input type="text" name="cate_cd"></td>
		</tr>
		<tr>
			<td>내용</td>
			<td><textarea name="content"></textarea></td>
		</tr>
		<tr>
			<td>태그</td>
			<td><input type="text" name="tag"/></td>
		</tr>
	</table>
		<button>저장</button>
		<button>목록</button>
	</form>
</body>
</html>