<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>** [새글 등록] Spring MVC2 **</title>
</head>
<body>
<h2>** [새글 등록] Spring MVC2 **</h2>
<form action="binsert" method="post">
<table>
<tr height="40"><td bgcolor="aqua">I D</td>
	<td><input type="text" name="id" value="${logID}" readonly="readonly"></td></tr>
<tr height="40"><td bgcolor="aqua">Title</td>
	<td><input type="text" name="title" id="title"></td></tr>
<tr height="40"><td bgcolor="aqua" >Content</td>
	<td><textarea rows="10" cols="40" name="content"></textarea>
	</td></tr>
<tr><td></td><td><input type="submit" value="글등록">
                 <input type="reset" value="취소"></td>	
</table>
</form>
<br>
<hr>
<a href="blist">BoardList</a>&nbsp;
<a href="list">MemberList</a><br>
<a href="logout">Logout</a>&nbsp;
<a href="home">Home</a><br>
</body>
</html>