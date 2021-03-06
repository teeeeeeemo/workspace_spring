<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><spring:message code="message.user.login.title" /></title>
</head>
<body>
	<center>
		<h1>
			<spring:message code="message.user.login.title" />
		</h1>
		<a href="login.do?lang=en"> <spring:message
				code="message.user.login.language.en" /></a>&nbsp;&nbsp; <a
			href="login.do?lang=ko"> <spring:message
				code="message.user.login.language.ko" /></a>
		<hr>
		<br />
		<form action="login.do" method="post">
			<table border="1" cellpadding="0" cellspacing="0">
				<tr>
					<td bgcolor="orange"><spring:message code="message.user.login.id" /></td>
					<td><input type="text" name="id" value="${userVO.id}"></td>
				</tr>
				<tr>
					<td bgcolor="orange"><spring:message code="message.user.login.password" /></td>
					<td><input type="password" name="password"
						value="${userVO.password }"></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="submit"
						value="<spring:message code="message.user.login.loginBtn"/>" />&nbsp;</td>
				</tr>
			</table>
		</form>
		
		<br>

		<form action="insertUser.jsp">
			<button>
				<spring:message code="message.user.login.joinBtn" />
			</button>
		</form>
	</center>
</body>
</html>