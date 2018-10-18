var AjaxUtil = function(conf){
	var xhr = new XMLHttpRequest();
	var url = conf.url;
	var method = conf.method?conf.method : 'GET';			
	//삼항연산자라해서  값이있으면 : 기준으로 왼쪽이고  없다면 오른쪽 get이 된다.
	var param = conf.param?conf.param : '{}';
	
	var success = conf.success?conf.success : function(res){
		alert(res);
	}
	var error = conf.error?conf.error:function(res){
		alert(res);
	}
	
	xhr.onreadystatechange = function(){
		if(xhr.readyState==4){
			if(xhr.status=="200"){
				var res = xhr.responseText; 
				// xhr.responseText = 컨트롤러에서 리턴된 값
				success(res); 
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
		xhr.send(param);	//받은 json 화된 param을 보내기 위해 사용
	}	
};		