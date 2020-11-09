<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>** PageBoardList **</title>
</head>
<body>
<h2>** Spring MVC2 PageBoardList **</h2>
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
		<c:if test="${logID!=null}">
			<a href="bdetail?seq=${mm.seq}&id=${mm.id}">${mm.title}</a>
		</c:if>
		<c:if test="${logID==null}">
			${mm.title}
		</c:if>
		
	</td>
	<td>${mm.id}</td>
	<td>${mm.regdate}</td><td>${mm.cnt}</td>
	</tr>
</c:forEach>
</table>
<hr>
<!-- ** paging 추가 ** -->
<div align="center">
	<%-- ** paging 1. 
	<c:forEach var="i" begin="1" end="${totPageNo}"> --%>
	
	<!-- paging2 -->
	<c:choose>
		<c:when test="${sPageNo>perPageNo}">
			<a href="pblist?currPage=1">First</a>&nbsp;
			<a href="pblist?currPage=${sPageNo-1}">Prev</a>&nbsp;&nbsp;
		</c:when>
		<c:otherwise>
			<font color="gray">First&nbsp;Prev&nbsp;&nbsp;</font>
		</c:otherwise>
	</c:choose>
		<c:forEach var="i" begin="${sPageNo}" end="${ePageNo}"> 
			<c:if test="${i==currPage}">
				<font size="5" color="Orange"> ${i}&nbsp; </font>
			</c:if>
			<c:if test="${i!=currPage}">
				<a href="pblist?currPage=${i}">${i}</a>
			</c:if>
		</c:forEach>
	<c:choose>
		<c:when test="${ePageNo<totPageNo}">
			&nbsp;&nbsp;<a href="pblist?currPage=${ePageNo+1}">Next</a>&nbsp; <!-- 쿼리스트링 -->
			<a href="pblist?currPage=${totPageNo}">Last</a>
		</c:when>
		<c:otherwise>
			<font color="gray">&nbsp;&nbsp;Next&nbsp;Last</font>
		</c:otherwise>
	</c:choose>
</div>
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