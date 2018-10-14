<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>Insert title here</title>
</head>
<body>
<style>
body {
    background-image: url("/resources/img/treea.jpg");
    background-size: 1800px 1200px;
    /*  background-repeat: no-repeat; */  
	} 
</style>
<script>
<c:if test="${!empty iCnt}">
	<c:if test="${iCnt eq 1}">
		alert("저장성공");
		location.href="/libraryinfo";
	</c:if>
</c:if>
</script>
<form action="/libraryinfo" method="post">
	lino : <input type="text" name="lino"><br>
	liprice : <input type="text" name="liprice"><br>
	liname : <input type="text" name="liname"><br>
	ligenre : <input type="text" name="ligenre"><br>
	lidate : <input type="text" name="lidate"><br>
	lipublisher : <input type="text" name="liname"><br>
	liwriter : <input type="text" name="liwriter"><br>
	liimg : <input type="text" name="liimg"><br>
	libook : <input type="text" name="libook"><br>
	listar : <input type="text" name="listar"><br>
	<button>등록</button>
</form>
</body>
</html> 