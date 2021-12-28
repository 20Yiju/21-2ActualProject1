<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="handong.csee.edu.board.BoardDAO,handong.csee.edu.board.BoardVO,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>FREE BOARD (SPRING)</title>
<style>
#list {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}
#list td, #list th {
  border: 1px solid #ddd;
  padding: 8px;
  text-align:center;
}
#list tr:hover {background-color: rgb(255, 231, 231);;}
#list th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: center;
  background-color: rgb(230, 172, 172);;
  color: white;
}
</style>
<script>
	function delete_ok(id){
		var a = confirm("정말로 삭제하겠습니까?");
		if(a) location.href='delete/' + id;
	}
</script>
</head>
<body>
<h1>Managing</h1>

<table id="list" width="90%">
<tr>
	<th>Id</th>
	<th>Name</th>
	<th>NickName</th>
	<th>Phone Number</th>
	<th>Email</th>
	<th>BirthDay</th>
	<th>Edit</th>
	<th>Delete</th>
</tr>
<c:forEach items="${list}" var="u">
	<tr>
		<td>${u.getSeq()}</td>
		<td>${u.getName()}</td>
		<td>${u.getNickname()}</td>
		<td>${u.getPhone()}</td>
		<td>${u.getEmail()}</td>
		<td>${u.getBirth()}</td>
		<td><a href="editform/${u.getSeq()}">Edit</a></td>
		<td><a href="javascript:delete_ok('${u.getSeq()}')">Delete</a></td>
	</tr>
</c:forEach>
</table>
<br/><button type="button" onclick = "location.href = 'add'"> Add New Client </button>
</body>
</html>