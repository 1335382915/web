$(function(){
	var userName=$(".userName");
	var password=$(".password");
	$("#load").on("click",function(){
		
		$.get("user_login.action?username="+userName.val()+"&password="+password.val(),
		function(data){
			if(data!=""){
				$.cookie('username',"");
				alert(data);
				
			}
			else{
				var url=userName.val();
				$.cookie('username',encodeURI(url));
				window.location="user_main.action";
			}
		})
	});
})