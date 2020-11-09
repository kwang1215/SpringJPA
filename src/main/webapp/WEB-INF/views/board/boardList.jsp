<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>** BoardList **</title>
</head>
<body>
<h2>** Spring MVC2 BoardList (조회수,답글 추가) **</h2>
<img  src="resources/image/bar.gif"><br>
<hr>
<c:if test="${message != null}">
 => ${message}<br>
</c:if>
<hr>
<table width=800 border="0">
<tr align="center" height=30 bgcolor="springgreen">
	<td>Seq</td><td>Title</td><td>ID</td>
	<td>RegDate</td><td>Count</td>
</tr>
<c:forEach var="mm" items="${Banana}">
	<tr align="center" height=30>
	<td>${mm.seq}</td>
	<td align="left">
	
		<!-- indent 값에 따른 들여쓰기 -->
		<c:if test="${mm.indent>0}">
			<c:forEach begin="1" end="${mm.indent}">
				<span>&nbsp;&nbsp;</span>
			</c:forEach>
			<span style="color:orange">re..)</span>
		</c:if>
		
		<!-- title 출력 -->
			<a href="bdetail?seq=${mm.seq}&id=${mm.id}">${mm.title}</a>
		
		
	</td>
	<td>${mm.id}</td>
	<td>${mm.regdate}</td><td>${mm.cnt}</td>
	</tr>
</c:forEach>
</table>
<hr>

<c:if test="${logID!=null}">
	<a href="binsertf">[새글등록]</a>&nbsp;
</c:if>
<c:if test="${logID==null}">
	<a href="loginf">[LogIn]</a>&nbsp;&nbsp;
	<a href="joinf">[Join]</a><br>
</c:if>
<a href="home">[Home]</a><br>
</body>
</html>