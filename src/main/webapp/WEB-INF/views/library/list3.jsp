<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>도서 책 추가 및 정보!!</title>
 <link rel = "stylesheet" href = "/resources/css/bootstrap.css/">
<link rel = "stylesheet" href = "/resources/css/bootstrap-theme.css/">
					
<script src="/resources/js/jquery.js"></script>
<script src="/resources/js/bootstrap.js"></script>
 
 
</head>
<script>
var AjaxUtil = function(conf){
	var xhr = new XMLHttpRequest();
	var url = conf.url;
	var method = conf.method?conf.method:'GET';
	var param = conf.param?conf.param:'{}';
	
	var success = conf.success?conf.success:function(res){
		alert(res);
	}
	var error = conf.error?conf.error:function(res){
		alert(res);
	}
	
	xhr.onreadystatechange = function(){
		if(xhr.readyState==4){
			if(xhr.status=="200"){
				success(xhr.responseText);
			}else{
				error(xhr.responseText);
			}
		}
	}
	xhr.open(method,url);
	if(method!='GET'){
		xhr.setRequestHeader('Content-type','application/json;charset=utf-8');
	}
	this.send = function(){
		xhr.send(param);
	}	
}		
window.addEventListener('load',function(){
	var conf = {
			url : '/libraryinfo',
			success:function(res){
				res = JSON.parse(res);
				var html = '';
				for(var li of res){
					html += '<tr>';
					html += '<td>' + li.lino + '</td>';
					html += '<td><input type="text" id="liname' + li.lino+'" value="' + li.liname + '"></td>';
					html += '<td><input type="text" id="liprice' + li.lino+'" value="' + li.liprice + '"></td>';
					html += '<td><input type="text" id="ligenre' + li.lino+'" value="' + li.ligenre + '"></td>';
					html += '<td><input type="text" id="lidate' + li.lino+'" value="' + li.lidate + '"></td>';
					html += '<td><input type="text" id="lipublisher' + li.lino+'" value="' + li.lipublisher + '"></td>';
					html += '<td><input type="text" id="liwriter' + li.lino+'" value="' + li.liwriter + '"></td>';
					html += '<td><input type="text" id="liwhere' + li.lino+'" value="' + li.liwhere + '"></td>';
					html += '<td><img src="/resources' + li.liimg + '" style="width:100px"></td>';
					//html += '<td><input type="text" id="liimg' + li.lino+'" value="' + li.liimg + '"></td>';
					html += '<td><input type="text" id="libook' + li.lino+'" value="' + li.libook + '"></td>';
				
					html += '<td><input type="text" id="listar' + li.lino+'" value="' + li.listar + '"></td>';
					html += '<td><button class="btn btn-default" onclick="updateLibraryInfo('+li.lino+')">수정</button></td>';
					html += '<td><button class="btn btn-default" onclick="deleteLibraryInfo('+li.lino+')">삭제</button></td>';
					html += '</tr>';
				}
				document.querySelector('#liBody').insertAdjacentHTML('beforeend',html);
		}
	}
	var au = new AjaxUtil(conf);
	au.send();
});		
</script>		

<style>

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


/* 테이블 */
table {
	border-collapse: collapse;
	font-family: "Trebuchet MS", "Lucida Sans Unicode", verdana, lucida, helvetica, sans-serif;
	font-size: 0.8em;
	margin: 0;
	padding: 0;
}
caption {
	font-size: 1.4em;
	font-stretch: condensed;
	font-weight: bold;
	padding-bottom: 5px;
	text-align: left;
	text-transform: uppercase;
}
th, td {
	border-bottom: 1px solid #666;
	border-top: 1px solid #666;
	padding: 0.6em;
	vertical-align: 4px;
}
th {
	text-align: left;
	text-transform: uppercase;
}
thead th, tfoot th, tfoot td {
	background-color: #cc9;
	font-size: 1.1em;
}
tbody th {
	background: url(http://www.clacksweb.org.uk/images/bullet_vacancy.gif) no-repeat 6px 0.8em;
	padding-left: 24px;
}
tbody th, td {
	background-color:#eee;
}
tbody tr:hover td, tbody tr:hover th {
	background-color: #E5E5CB;
}
tr.odd td, tr.odd th {
	background-color: #ddd;
}
tbody a {
	color: #333;
}
tbody a:visited {
	color: #999999;
}
tbody a:hover {
	color: #33c;
}
tbody a:active {
	color: #33c;
}
tbody td+td+td+td a {
	background: url(http://www.clacksweb.org.uk/images/external.gif) no-repeat right 0.4em;
	padding-right: 12px;
}
tfoot th {
	text-align: right;
}
tfoot th:after {
	content: ":";
}
	/* 테이블 끝 */

	 tbody>tr>td>input{
		text-align:center;	
		cursor:pointer;
		color : blue;
	} 
	
	 thead>tr>th{
		text-align:center;	
		cursor:pointer;
	}
	 
	 img{
	 	cursor : pointer;
	 }
	 
	h1{
		text-shadow: 5px 5px 5px #00CCFF;	
	}
	
 	body {
    background-image: url("/resources/img/treea.jpg");
    background-size: 1800px 1200px;
    /*  background-repeat: no-repeat; */  
	} 

	body{
	  	font-familly:"Times New Roman", Times, serif;
	
	}
	
	/* td>button{
		background-color: #4CAF50;
	} */
	
	p{
	 	background-color: #e7e7e7;
	 	color:blue;
	}

</style>
		
<body>

<h1><img src = "/resources/img/book.jpg" style="width : 5% ">Book Store</h1>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">BookSiteName</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="http://localhost/url/library:list3">Home</a></li>
      <li><a href="/url/library:insert">추가하고자 하는 책 데이터 등</a></li>
      <li><a href="https://www.google.co.kr/search?q=%EC%84%9C%EC%9A%B8+%EC%95%8C%EB%9D%BC%EB%94%98+%EC%84%9C%EC%A0%90&npsic=0&rflfq=1&rlha=0&rllag=37526138,126950734,5833&tbm=lcl&ved=2ahUKEwiVjr6K3v3dAhVFMt4KHX5uCWsQtgN6BAgFEAQ&tbs=lrf:!2m1!1e3!3sIAE,lf:1,lf_ui:4&rldoc=1#rlfi=hd:;si:;mv:!3m8!1m3!1d77762.01320381546!2d126.94592338652342!3d37.550338837967836!3m2!1i772!2i590!4f13.1">서울 알라딘 위치</a></li>
      <li><a href="https://www.google.co.kr/maps/@37.5662143,126.9777403,2a,75y,245.39h,66.53t/data=!3m6!1e1!3m4!1ssR3Rxvi9RG8AAAAGOpA9mA!2e0!7i13312!8i6656">서울 시청 도서관</a></li>
    </ul>
  </div>
</nav>

<p>
찾으실 도서를 입력해주세요 : <input type="text" name="liname">
<img src = "/resources/img/dot.jpg" style="width : 4%" button onclick="search()"></button> 

</p>
<table border="1">
	<thead>
		<tr>
			<th>lino</th>
			<th>liname</th>
			<th>liprice</th>
			<th>ligenre</th>
			<th>lidate</th>
			<th>lipublisher</th>
			<th>liwriter</th>
			<th>liwhere</th>
			<th>liimg</th>
			<th>libook</th>
			<th>listar</th>
			<th>수정</th>
			<th>삭제</th>
		</tr>
	</thead>
	
	<tbody id="liBody">
	</tbody>
	
</table>

<form id="form" enctype="multipart/form-data">
</form>


<!-- <img src = "/resources/img/click.png" style="width : 10%" button onclick="addLibraryInfo()"></button> -->
<button onclick ="addLibraryInfo()">추가하고자 하는 책이 있을경우 Click 해주세요</button>
<script>
var idx = 1;
function search(){
	var liname = document.querySelector('input[name=liname]').value;	

		var conf = {
				url : '/libraryinfo2/'+liname,
				method : 'GET',
				success : function(res){
					res = JSON.parse(res);
					var html = '';
					for(var li of res){
						html += '<tr>';
						html += '<td>' + li.lino + '</td>';
						html += '<td><input type="text" id="liname' + li.lino+'" value="' + li.liname + '"></td>';
						html += '<td><input type="text" id="liprice' + li.lino+'" value="' + li.liprice + '"></td>';
						html += '<td><input type="text" id="ligenre' + li.lino+'" value="' + li.ligenre + '"></td>';
						html += '<td><input type="text" id="lidate' + li.lino+'" value="' + li.lidate + '"></td>';
						html += '<td><input type="text" id="lipublisher' + li.lino+'" value="' + li.lipublisher + '"></td>';
						html += '<td><input type="text" id="liwriter' + li.lino+'" value="' + li.liwriter + '"></td>';
						html += '<td><input type="text" id="liwhere' + li.lino+'" value="' + li.liwhere + '"></td>';
						html += '<td><input type="text" id="liimg' + li.lino+'" value="' + li.liimg + '"></td>';
						html += '<td><input type="text" id="libook' + li.lino+'" value="' + li.libook + '"></td>';
						html += '<td><input type="text" id="listar' + li.lino+'" value="' + li.listar + '"></td>';
						html += '<td><button onclick="updateLibraryInfo('+li.lino+')" type="button" class="btn btn-primary">수정</button></td>';
						html += '<td><button onclick="deleteLibraryInfo('+li.lino+')" type="button" >삭제</button></td>';
						html += '</tr>';
					}
					document.querySelector('#liBody').innerHTML = html;;
				}
		}
		var au = new AjaxUtil(conf);
		au.send();
	}
	
	




function addLibraryInfo(){
		var html = '<tr>';
		html += '<td><input type="text" data-idx="' + idx +'" id="lino" value=""></td>';
		html += '<td><input type="text" data-idx="' + idx +'" id="liname" value=""></td>';	
		html += '<td><input type="text" data-idx="' + idx +'" id="liprice" value=""></td>';	
		html += '<td><input type="text" data-idx="' + idx +'" id="ligenre" value=""></td>';
		html += '<td><input type="text" data-idx="' + idx +'" id="lidate" value=""></td>';
		html += '<td><input type="text" data-idx="' + idx +'" id="lipublisher" value=""></td>';
		html += '<td><input type="text" data-idx="' + idx +'" id="liwriter" value=""></td>';
		html += '<td><input type="text" data-idx="' + idx +'" id="liwhere" value=""></td>';
		html += '<td><input type="file" data-idx="' + idx +'" id="liimg" value=""></td>';		
		html += '<td><input type="text" data-idx="' + idx +'" id="libook" value=""></td>';	
		html += '<td><input type="text" data-idx="' + idx +'" id="listar" value=""></td>';
		html += '<td><button onclick="saveLibraryInfo()">저장</button></td>';
		
		html += '<td><button onclick="savelibraryInfo1('+idx+')" type="button">사진</button></td>';

		html += '</tr>';
		document.querySelector('#liBody').insertAdjacentHTML('beforeend',html);
}

/* function checkValue(){     
	var nameObj = document.querySelector('#liname');
	var priceObj = document.querySelector('#liprice');
	var imgObj = document.querySelector('#liimg');
	var bookObj = document.querySelector('#libook');
	
	if(nameObj.value.trim().length<1){
		alert('책의 글자는 1글자 이상입니다');
		nameObj.value="";
		nameObj.focus();
		return false;
	}
	
	if(priceObj.value.trim().length<1){
		alert("다시 가격을 입력해주세요");
		priceObj.value="";
		priceObj.focus();
		return false;
	}
	
	if(imgObj.value.trim().??????){
		alert('이미지 파일을 올려주세요');
		imgObj.value="";
		imgObj.focus();
		return false;
	}
	
	if(bookObj.value.trim().length<1){
		alert("관련된 책을 입력해주세요");
		bookObj.value="";
		bookObj.focus();
		return false;
	}
	
}  */

function saveLibraryInfo(){
	var liname = document.querySelector('#liname').value;	
	var liprice = document.querySelector('#liprice').value;	
	var ligenre = document.querySelector('#ligenre').value;	
	var lidate = document.querySelector('#lidate').value;	
	var lipublisher = document.querySelector('#lipublisher').value;	
	var liwriter = document.querySelector('#liwriter').value;	
	var liwhere = document.querySelector('#liwhere').value;	
	var liimg = document.querySelector('#liimg').value;	
	var libook = document.querySelector('#libook').value;	
	var listar = document.querySelector('#listar').value;	
	var params = {liname:liname, liprice:liprice, ligenre:ligenre, lidate:lidate, lipublisher:lipublisher, 
			liwriter:liwriter, liwhere:liwhere, liimg:liimg, libook:libook, listar:listar};
	params = JSON.stringify(params);
	
	var conf = {
			url :'/libraryinfo/',
			method : 'POST',
			param : params,
	
			success : function(res){
				if(res=='1'){
					alert('도서저장');
					/* initList(); */
					location.href="/url/library:list3";	
				}
			}
	}
		var au = new AjaxUtil(conf);
	au.send();
}


function savelibraryInfo1(pIdx){
	var form = document.querySelector("form");
	var formData = new FormData(form);
	var inputs = document.querySelectorAll('input[data-idx="' + pIdx + '"]');
	for(var i of inputs){
		if(i.type=='file'){
			formData.append(i.id, i.files[0]);
		}else{
			formData.append(i.id, i.value);
		}
	}
	var url = "/libraryinfoTest";
	var method = 'POST';
	
	var xhr = new XMLHttpRequest();
	
	xhr.onreadystatechange = function(){
		alert(xhr.response);
	}
	
	xhr.open(method,url);
	xhr.send(formData);
	
}

function updateLibraryInfo(lino){
	var liname = document.querySelector("#liname"+lino).value;
	var liprice = document.querySelector("#liprice"+lino).value;
	var ligenre = document.querySelector("#ligenre"+lino).value;
	var lidate = document.querySelector("#lidate"+lino).value;
	var lipublisher = document.querySelector("#lipublisher"+lino).value;
	var liwriter = document.querySelector("#liwriter"+lino).value;
	var liwhere = document.querySelector("#liwhere"+lino).value;
	var liimg = document.querySelector("#liimg"+lino).value;
	var libook = document.querySelector("#libook"+lino).value;
	var listar = document.querySelector("#listar"+lino).value;
	params = {liname:liname, liprice:liprice, ligenre:ligenre, lidate:lidate, lipublisher:lipublisher, 
			liwriter:liwriter, liwhere:liwhere, liimg:liimg, libook:libook, listar:listar, lino:lino};
	params = JSON.stringify(params);
	
	  var conf = {
			url : '/libraryinfo/' + lino,
			method : 'PUT',
			param : params,
	success : function(res){
		alert(res);
	}
	}
	var au = new AjaxUtil(conf);
	au.send(); 
}
	
 
function deleteLibraryInfo(lino){
	
	var conf = {
			url : '/libraryinfo/' + lino,
			method : 'DELETE',
			success : function(res){
				if(res=='1'){
					alert('삭제');
					location.href="/url/library:list3";
				}
			}
	}
	var au = new AjaxUtil(conf);
	au.send();
}



</script>
</body>
</html>