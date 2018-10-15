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
	
	html,body{
  height:10%;
}
body{
  text-align:center;
}
body:before{
  content:'';
  height:100%;
  display:inline-block;
  vertical-align:middle;
}
button{
  background:#1AAB8A;
  color:#fff;
  border:none;
  position:relative;
  height:60px;
  font-size:1.6em;
  padding:0 2em;
  cursor:pointer;
  transition:800ms ease all;
  outline:none;
}
button:hover{
  background:#fff;
  color:#1AAB8A;
}
button:before,button:after{
  content:'';
  position:absolute;
  top:0;
  right:0;
  height:2px;
  width:0;
  background: #1AAB8A;
  transition:400ms ease all;
}
button:after{
  right:inherit;
  top:inherit;
  left:0;
  bottom:0;
}
button:hover:before,button:hover:after{
  width:100%;
  transition:800ms ease all;
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