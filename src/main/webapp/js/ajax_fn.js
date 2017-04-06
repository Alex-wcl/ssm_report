var AIM_url={customer:"customer",sales:"sales",common:"common",DMC:"dmc",report:"report"}
function ajax_fn(type,url,data,callback,beforeSendFn)
    {
    	$.ajax({
    		type:type,
    		url:getRootPath()+url,
    		contentType:"application/json",
    		data:data,
    		dataType:"json",
			beforeSend:function(){
				if(!beforeSendFn)return;
				beforeSendFn();
			},
    		success:function(data){
    			callback(data);
    		},
			error:function(XMLHttpRequest, textStatus, errorThrown){

				switch (XMLHttpRequest.status){
					case 401:
						window.location.href=getRootPath()+'401.html';
						break;
					case 403:
						window.location.href=getRootPath()+'403.html';
						break;
					case 412:
						window.location.href=getRootPath()+'domain-error.html';
						break;						
				}
			}
    	})
    }
function getRootPath() {
	var pathName = window.location.pathname.substring(1);
	var webName = pathName == '' ? '' : pathName.substring(0, pathName.indexOf('/'));
	return window.location.protocol + '//' + window.location.host + '/';
}
