<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>글 내용</title>
</head>
<body>
<center>
<h1>글 상세</h1>
<a href="logout.do">Log-out</a>
<hr>
<form action="updateBoard.do" method="post">
<input type="hidden" name="seq" value="${board.seq }"/>
<table border="1" cellpadding="0" cellspacing="0">
	<tr>
		<td bgcolor="yellow" width="70">제목</td>
		<td align="left"><input name="title" type="text" value="${board.title }"/></td>
	</tr>
	<tr>
		<td bgcolor="yellow">작성자</td>
		<td align="left">${board.writer }</td>	
	</tr>
	<tr>
		<td bgcolor="yellow">내용</td>
		<td align="left"><textarea name="content" cols="45" rows="10">${board.content }
							</textarea></td>
	</tr>
	<tr>
		<td bgcolor="yellow">등록일</td>
		<td align="left"><fmt:formatDate value="${board.regDate}" pattern="yyyy-MM-dd"/></td>
	</tr>
	<tr>
		<td bgcolor="yellow">조회수</td>
		<td align="left">${board.cnt }</td>
	</tr>
	<tr>
		<td colspan="2" align="center">
			<input type="submit" value="글 수정"/>
		</td>
	</tr>										
</table>
</form>
<hr>
<a href="insertBoard.jsp">새글등록</a>&nbsp;&nbsp;&nbsp;
<a href="deleteBoard.do?seq=${board.seq }">글삭제</a>&nbsp;&nbsp;&nbsp;
<a href="getBoardList.do">글목록</a>

</center>
</body>
</html>