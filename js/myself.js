$(function(){
	var $active_email=$(".active-email");
    //myself
    $.get("user_returnState.action?username="+$.cookie("username"),function(data){
    
    	if(data==0){//如果激活了，那么就取消激活功能
    	    $active_email.css("display","block");	
    	}
    	else{
    		$active_email.css("display","none");
    	}
    });
    var $my_address=$(".my-address");
    var $add=$("#add-address");
    $.get("user_returnAddr.action?username="+$.cookie("username"),function(data){
    	
    	if(data!=""){//如果已经有了地址，那么让地址显示，按钮隐藏
    		var str=data.split(" ");
    		$(".my-name").html(str[0]);
    		$(".my-telephone").html(str[1]);
    		$(".my-addr").html(str[2]);
    	    $my_address.css("display","block");	
    	    $add.css("display","none");
    	}
    	else{
    		$my_address.css("display","none");	
   	    $add.css("display","block");
    	}
    });
    var $send_email=$("#email");
    var userName=decodeURI($.cookie("username"));
    $(".name").html(userName);
    $send_email.on("blur",function(){
    	var $error=$(".error");
    	var re=/^\w+@[a-z0-9]+\.[a-z]{2,4}$/;
        if(re.test($send_email.val())){
        	$error.html("");
        	$.get("user_findByEmail.action?time="+new Date().getTime()+"&email="+$send_email.val(),function(data){
        		$error.html(data);
        		if(data!="")
        			{
        			   check=false;
        			}
        		else{
        			check=true;
        			$error.html("");
        		}
        	});
        }
        else{
            $error.html("！请输入正确的邮箱");
           check=false;
        }
    });
    $(".my-address").on("mouseover",function(){
        $(".update").css("opacity",1);
    }).on("mouseout",function(){
        $(".update").css("opacity",0);
    });
    $("#activate").on("click",function(e){//邮箱激活功能
        if(check){
        	$("#send-email").modal("show");
           	$("#send-email").on("shown.bs.modal",function(){
           	 $.ajax({
              	type:"POST",
              	url:"user_activite.action",
              	async:false,
              	data:{
              		username:$.cookie("username"),
          	        email:$send_email.val()
              	},
              	success:function(data){
              		       		
              	}
              });
           		var code=$(".code");
           	    $(".confirm").on("click",function(){
           	    	$.get("user_registCode.action?username="+userName+"&code="+code.val()+"&email="+$send_email.val(),function(data){
           	    		if(data!=""){
           	    			alert(data);
           	    		}
           	    		else {
           	    			alert("激活成功");
           	    			window.location="user_self.action";
           	    		}
           	    	});
           	    });    
                
            });
    	}    
    	else {
            e.stopPropagation();
            return false;
        }
    });
    $("#add-address").on("click",function(){
    	$("#myMode").modal("show");
    });
    $("#save").on("click",function(){
    	$.ajax({
              	type:"POST",
              	url:"user_saveAddr.action",
              	async:false,
              	data:{
              		username:$.cookie("username"),
          	        name:$(".rec_name").val(),
          	        phone:$(".rec_telephone").val(),
          	        addr:$(".rec_address").val()
              	},
              	success:function(data){
              		window.location.reload();       		
              	}
              });
    });
    $(".update").on("click",function(){
    	$("#myMode").modal("show");
    })
});