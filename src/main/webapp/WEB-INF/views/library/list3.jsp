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
<script src="/resources/js/AjaxUtil.js"></script>
 
<script src="//code.jquery.com/jquery.min.js"></script>

<script>
$(function(){
  $(".zeta-menu li").hover(function(){
    $('ul:first',this).show();
  }, function(){
    $('ul:first',this).hide();
  });
  $(".zeta-menu>li:has(ul)>a").each( function() {
    $(this).html( $(this).html()+' &or;' );
  });
  $(".zeta-menu ul li:has(ul)")
    .find("a:first")
    .append("<p style='float:right;margin:-3px'>&#9656;</p>");
});
</script>


 
</head>
<script>

window.addEventListener('load',function(){
	var conf = {
			url : '/libraryinfo',
			success:function(res){
				res = JSON.parse(res);
				var html = '';
				for(var li of res){
					html += '<tr>';
					html += '<td>' + li.lino + '</td>';
					html += '<td><input type="text" data-idx="' + li.lino +'" id="liname" value="' + li.liname + '"></td>';
					html += '<td><input type="text" data-idx="' + li.lino +'" id="liprice" value="' + li.liprice + '"></td>';
					html += '<td><input type="text" data-idx="' + li.lino +'" id="ligenre" value="' + li.ligenre + '"></td>';
					html += '<td><input type="text" data-idx="' + li.lino +'" id="lidate" value="' + li.lidate + '"></td>';
					html += '<td><input type="text" data-idx="' + li.lino +'" id="lipublisher" value="' + li.lipublisher + '"></td>';
					html += '<td><input type="text" data-idx="' + li.lino +'" id="liwriter" value="' + li.liwriter + '"></td>';
					html += '<td><input type="text" data-idx="' + li.lino +'" id="liwhere" value="' + li.liwhere + '"></td>';
					html += '<td><img src="/resources' + li.liimg + '" style="width:100px"></td>';
					//html += '<td><input type="text" id="liimg' + li.lino+'" value="' + li.liimg + '"></td>';
					html += '<td><input type="text" data-idx="' + li.lino +'" id="libook" value="' + li.libook + '"></td>';
				
					html += '<td><input type="text" data-idx="' + li.lino +'" id="listar" value="' + li.listar + '"></td>';
					html += '<td><input type="hidden" data-idx="' + li.lino +'" id="lino" value="' + li.lino + '"></td>';

					html += '<td><button type="button" class="btn btn-default" onclick="updateLibraryInfo1('+li.lino+')">수정</button></td>';
					html += '<td><button type="button" class="btn btn-default" onclick="deleteLibraryInfo('+li.lino+')">삭제</button></td>';
					html += '</tr>';
				}
				document.querySelector('#liBody').insertAdjacentHTML('beforeend',html);
		}
	}
	var au = new AjaxUtil(conf);
	au.send();
});		
</script>		

<body>

<div class="helloworld_box">
	<span class="helloworld1" onclick="cloneHelloWorld(this)">Nice to meet you!</span>
</div>


<!-- 테스트 -->

<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
  $( function() {
    $( "#accordion" ).accordion();
  } );
  </script>
</head>
<body>
 
<div id="accordion">
  <h3>Section 1</h3>
  <div>
    <p style = "font-size:60PX">
  	안녕하세요. 이번에 너무나 즐거운 프로젝트를 하면서 
  	프론트엔드 담당을 맞게 된 
  	박영근과 백엔드 담당 장대석입니다~!!
    </p>
  </div>
  <h3>Section 2</h3>
  <div>
    <p style = "font-size:50PX">
        프로젝트를 보면서 가볍다 라는 느낌으로 편하게 보고 듣는것도 감사드리지만
        그래도 이 발표자들은 어떠한 이유로 프로젝트를 만들었으며 눈에 띄게 뛰어나진 않지만 어떠한
        프로그램을 사용했을까 하는 느낌으로 봐주신다면 더욱 감사드리겠습니다.
    </p>
  </div>
  <h3>Section 3</h3>
  <div>
    <p style = "font-size:40px">
     저희가 준비한 첫번째 프로젝트는 서점에 있는 도서를 검색하는 서적등록 및 검색을 담당하였습니다.
    이것을 만들겠다고 다짐한 이유는 오늘날에는 베스트샐러부터 저질 책 까지 수많은 책들이 하늘에서 떨어지고
    있습니다. 이러한 것들을 찾는데는 사람의 손만으로는 분명 어려움을 느끼게 될것이고 그러기 위해 검색대가 
    항상 놓여있는것이지요 하지만 검색대가 없다면?? 이라는 생각으로 만들어보자 라는 느낌만으로 처음 단추를 
    끼우게 되었습니다.
    </p>
  </div>
  <h3>Section 4</h3>
  <div>
     <p style= "font-size:50PX" >
    	너를 잊지마  그리고 너를 잃지마	
    </p>
    <p style= "font-size:50PX" >  	
   		Don't forget you. and Don't lose you. 
    </p>
  </div>
</div>
 
 
</body>
</html>

<!-- 테스트 -->

<div class='zeta-menu-bar'>
  <ul class="zeta-menu">
    <li><a href="http://localhost/url/library:list3">HOME</a></li>
    <li><a href="http://localhost/url/library:insert">추가하고자 하는 도서가 있으신가요?</a></li>
    <li><a href="#">프로젝트 참고 내역</a>
      <ul>
        <li><a href="#">프론트엔드 + 백엔드</a>
          <ul>
            <li><a href="https://github.com/reparkye?tab=repositories">프론트엔드 박영근 GIT</a></li>
            <li><a href="https://github.com/wkd4914?tab=repositories">백엔드 장대석GIT</a></li>
          </ul>
        </li>
        <li><a href="#">참고한 CSS 등 사이트</a>
          <ul>
            <li><a href="http://superkts.com/img/jjal/raccoon01.jpg">너구리</a></li>
            <li><a href="http://bootstrapk.com/getting-started/#download">부트스트랩</a></li>
            <li><a href="https://www.w3schools.com/css/">CSS</a></li>
          </ul>
        </li>
      </ul>
    </li>
    <li><a href="#">참고하기 좋을 주요 서점 위치 및 베스트샐러</a>
      <ul>
        <li><a href="https://www.google.co.kr/search?q=%EC%84%9C%EC%9A%B8+%EC%95%8C%EB%9D%BC%EB%94%98+%EC%84%9C%EC%A0%90&npsic=0&rflfq=1&rlha=0&rllag=37526138,126950734,5833&tbm=lcl&ved=2ahUKEwiVjr6K3v3dAhVFMt4KHX5uCWsQtgN6BAgFEAQ&tbs=lrf:!2m1!1e3!3sIAE,lf:1,lf_ui:4&rldoc=1#rlfi=hd:;si:;mv:!3m8!1m3!1d77762.01320381546!2d126.94592338652342!3d37.550338837967836!3m2!1i772!2i590!4f13.1">알라딘 서점</a></li>
        <li><a href="https://www.google.co.kr/maps/@37.5662143,126.9777403,2a,75y,245.39h,66.53t/data=!3m6!1e1!3m4!1ssR3Rxvi9RG8AAAAGOpA9mA!2e0!7i13312!8i6656">수도권 서울 도서관 위치 및 환경</a></li>
		<li><a href="http://www.yes24.com/24/category/bestseller?CategoryNumber=001&sumgb=09">알라딘 베스트</a></li>  
		<li><a href="http://book.interpark.com/display/collectlist.do?_method=BestsellerHourNew201605&bestTp=1&dispNo=028#">인터파크 베스트</a></li>    
      	<li><a href="https://www.coupang.com/np/search?q=%EB%B2%A0%EC%8A%A4%ED%8A%B8%EC%85%80%EB%9F%AC%20%EC%86%8C%EC%84%A4&src=1042001&spec=10304102&addtag=200&ctag=%EB%B2%A0%EC%8A%A4%ED%8A%B8%EC%85%80%EB%9F%AC%20%EC%86%8C%EC%84%A4&lptag=%EB%B2%A0%EC%8A%A4%ED%8A%B8%EC%85%80%EB%9F%AC%EC%86%8C%EC%84%A4&itime=20181015153605&wPcid=15395853658001717935640&wRef=search.naver.com&wTime=20181015153605&redirect=landing&forceBypass=Y&sid=RSA1&pageType=SEARCH&pageValue=%EB%B2%A0%EC%8A%A4%ED%8A%B8%EC%85%80%EB%9F%AC+%EC%86%8C%EC%84%A4">쿠팡 베스트샐러</a></li>
      </ul>
    </li> 
    <!-- <li><a href="#">4번 메뉴</a></li>  -->
  </ul>
</div>

<p>
 서적검색을 원하시면 클릭해주세요 : <input type="text" name="liname">
<img src = "/resources/img/dot.jpg" style="width : 4%" button onclick="search()"></button> 
 
 
 
</p>
<form name="form" enctype="multipart/form-data">

<table border="1">
	<thead>
		<tr>
			<th>lino</th>
			<th>책 이름</th>
			<th>책 가격</th>
			<th>장르</th>
			<th>출판된 날</th>
			<th>출판사</th>
			<th>작가</th>
			<th>책이 존재하는 위치</th>
			<th>이미지</th>
			<th>그 밖의 저서들</th>
			<th>기억에 남는 소절</th>
			<th></th>
			<th>수정</th>
			<th>삭제</th>
			
		</tr>
	</thead>
	
	<tbody id="liBody">
	</tbody>
	
</table>

</form>



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
						html += '<td><input type="text" id="liname' + li.liname+'" value="' + li.liname + '"></td>';
						html += '<td><input type="text" id="liprice' + li.liprice+'" value="' + li.liprice + '"></td>';
						html += '<td><input type="text" id="ligenre' + li.ligenre+'" value="' + li.ligenre + '"></td>';
						html += '<td><input type="text" id="lidate' + li.lidate+'" value="' + li.lidate + '"></td>';
						html += '<td><input type="text" id="lipublisher' + li.lipublisher+'" value="' + li.lipublisher + '"></td>';
						html += '<td><input type="text" id="liwriter' + li.liwriter+'" value="' + li.liwriter + '"></td>';
						html += '<td><input type="text" id="liwhere' + li.liwhere+'" value="' + li.liwhere + '"></td>';
						html += '<td><input type="text" id="liimg' + li.liimg+'" value="' + li.liimg + '"></td>';
						html += '<td><input type="text" id="libook' + li.libook+'" value="' + li.libook + '"></td>';
						html += '<td><input type="text" id="listar' + li.listar+'" value="' + li.listar + '"></td>';
						html += '<td><input type="hidden" id="lino' + li.lino+'" value="' + li.lino + '"></td>';
						html += '<td><button type="button" onclick="updateLibraryInfo1('+li.lino+')" type="button" class="btn btn-primary">수정</button></td>';
						html += '<td><button type="button" onclick="deleteLibraryInfo('+li.lino+')" type="button" >삭제</button></td>';
						html += '</tr>';
					}
					document.querySelector('#liBody').innerHTML = html;
				}
		}
		var au = new AjaxUtil(conf);
		au.send();
	}
	
	
		
		/* 인삿말 증식 위한 소스 */
function cloneHelloWorld(o){

	var pos  = $(o).offset();
	
	var rnd1  = Math.round( Math.random() * 600 - 300 );
	var rnd2 = Math.round( Math.random() * 600 - 300 );


	var move_top = pos.top - rnd1;
	var move_left = pos.left - rnd2;

	
	$(o)
	.clone() 
	.appendTo( '.helloworld_box' ) // 복제한것 추
	.css({ top : pos.top, left : pos.left, position:'absolute' }) 
	.animate( { top : move_top, left : move_left }, 1000, 'easeOutElastic', function(){ 
		var img = this; 

		
		setTimeout(function(){
			$(img).remove();
		}, 5000);
	});
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
		html += '<td><button type="button" onclick="saveLibraryInfo()">저장</button></td>';
		html += '<td><button type="button" onclick="checkValue()">check</button></td>';
		
		html += '<td><button type="button" onclick="savelibraryInfo1('+idx+')" type="button">사진</button></td>';

		html += '</tr>';
		document.querySelector('#liBody').insertAdjacentHTML('beforeend',html);


		/* 파일 유효성 검사 */
		
 function checkValue(){     
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
	
	alert(imgObj.value);
	
	if(imgObj.value.toLowerCase().substring(e.value.lastIndexOf('.')+1)){
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
	
}
 
}

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
		/* alert(xhr.response); */
		alert("완료");
		location.href="/url/library:list3";	
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

function updateLibraryInfo1(pIdx){
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
	var url = "/libraryinfo";
	var method = 'PUT';
	
	var xhr = new XMLHttpRequest();
	
	xhr.onreadystatechange = function(){
		 /* alert(xhr.response);  */
		 alert("수정 완료");
			location.href="/url/library:list3";
	}
	
	xhr.open(method,url);
	xhr.send(formData);
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