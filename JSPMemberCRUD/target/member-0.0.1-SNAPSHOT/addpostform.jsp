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
<form action="addpost.jsp" method="post">
<table>
<tr><td>User ID:</td><td><input type="text" name="userid"/></td></tr>
<tr><td>User name:</td><td><input type="text" name="username"/></td></tr>
<tr><td>Email address:</td><td><input type="text" name="email"></td></tr>
<tr><td><a href="fileform.jsp">Choose File</a></td><td align="right"></td></tr>
<tr><td><a href="posts.jsp">View All Records</a></td><td align="right"><input type="submit" value="Add User"/></td></tr>
</table>
</form>

</body>
</html>  