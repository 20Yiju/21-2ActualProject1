<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>Add New Post</h1>
<form action="./addok" method="post" accept-charset="utf-8">
	<table id = "edit">
		<tr><td>Name:</td><td><input type="text" name="name"/></td></tr>
		<tr><td>NickName:</td><td><input type="text" name="nickname"/></td></tr>
		<tr><td>Phone Number:</td><td><input type="text" name="phone"/></td></tr>
		<tr><td>Email:</td><td><input type="text" name="email"/></td></tr>
		<tr><td>BirthDay:</td><td><input type="text" name="birth"/></td></tr>
	</table>
	<button type="button" onclick="location.href=list"> 목록보기 </button>
	<button type="submit"> 저장하기 </button>
</form>

</body>
</html>