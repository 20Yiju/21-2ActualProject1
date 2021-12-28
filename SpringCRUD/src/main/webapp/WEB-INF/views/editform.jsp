<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page import="handong.csee.edu.board.BoardDAO,handong.csee.edu.board.BoardVO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Form</title>
</head>
<body>

<h1>Edit Form</h1>
<form:form commandName="boardVO" method="POST" action = "../editok" accept-charset="utf-8">
	<form:hidden path = "seq"/>
	<table id = "edit">
		<tr><td>Category:</td><td><form:input path="category"/></td></tr>
		<tr><td>Title:</td><td><form:input path="title"/></td></tr>
		<tr><td>Writer:</td><td><form:input path="writer"/></td></tr>
		<tr><td>Content:</td><td><form:textarea cols = "50" rows="5" path="content" /></td></tr>
	</table>
	<input type = "submit" value="수정하기"/>
	<input type = "button" value="취소하기" onclick = "history.back()"/>

</form:form>
</body>
</html>