<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>새글등록</title>
</head>
<body>
<center>
<h1>글 등록</h1>
<a href="logout.do">Log-out</a>
<hr>
<form action="insertBoard.do" method="post" enctype="multipart/form-data"
		onsubmit="return input_check_func()">
<input type="hidden" name="writer" value="${userName}"/>
<table border="1" cellpadding="0" cellspacing="0">
	<tr>
		<td bgcolor="pink" width="70">제목</td>
		<td align="left"><input type="text" id="title" name="title"/></td>
	</tr>
	<tr>
		<td bgcolor="pink">작성자</td>
		<td align="left">&nbsp;${userName }</td>
	</tr>
	<tr>
		<td bgcolor="pink">내용</td>
		<td align="left"><textarea id="content" name="content" cols="45" rows="10"></textarea></td>
	</tr>
	<tr>
		<td bgcolor="pink" width="70">업로드</td>
		<td align="left"><input type="file" name="uploadFile"/></td>
	</tr>
	<tr>
		<td colspan="2" align="center">
		<input type="submit" value="새 글 등록" />&nbsp;<input type="reset" value="취소"></td>
	</tr>
</table>
</form>
<hr>
<a href="getBoardList.do?lang=ko">글 목록</a>
</center>
    
    <script>
    	
    function input_check_func() {
    	var title = document.getElementById('title').value;
    	var content = document.getElementById('content').value;
    	if(title == null || content == null || 
    			title == "" || content == "" ) {
    		alert("제목이랑 내용은 써야할거아니야");
    	return false;
    	} else {
    		return true;
    	}
    }
    </script>
</body>
</html>