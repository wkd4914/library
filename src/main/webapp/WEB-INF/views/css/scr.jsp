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




</body>
</html>