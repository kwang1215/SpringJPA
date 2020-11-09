<%@ page contentType="text/html; charset=UTF-8"
    		pageEncoding="UTF-8"  %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<title>Home</title>
<link rel="stylesheet" type="text/css" href="resources/jqLib/myStyle.css">
<script src="resources/jqLib/jquery-3.2.1.min.js"></script>
<script src="resources/jqLib/axTest01.js"></script>
<script>
	function setClock() {
		var now = new Date();
		var t='* Now: '+
			now.getFullYear()+'년 '+(now.getMonth()+1)+'월 '+now.getDate()+'일 '
			+ now.getHours()+':'+now.getMinutes()+':'+now.getSeconds();
		document.getElementById('clock').innerHTML=t;
		//setTimeout('setClock()',1000); // 단위  1/1000 초 
		setInterval('setClock()',1000); 
		// 위 둘은 다른 메서드 이지만 function 에 적용했을때 동일한 결과
	}
</script>
</head>
<body onload="setClock()">
<h1>Hello Spring MVC2 !!!</h1>
<span>* Start: ${serverTime}</span><br>
<span id="clock"></span><br>
<c:if test="${message != null}">
	=> ${message}<br>
</c:if>
<img src="resources/image/phello.gif" width="300" height="200">
<hr>
<div id="resultArea"></div>
<hr>
<a href="blist">BoardList</a>&nbsp;&nbsp;
<a href="checkb">Bcheck</a><br>
</body>
</html>
