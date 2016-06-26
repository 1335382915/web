/**
 * Created by qc on 2016/6/3.
 */
$(function(){
    var userName=$(".userName");
    var email=$(".email");
    var password=$(".password");
    var confirmPassword=$(".confirmPassword");
    var value1=false,value2=false,value3=false,value4=false;
    userName.on("blur",function(){
        if(userName.val()==""){
            $(this).next().find("h6").html("！用户名不能为空");
            value1=false;
        }
        else{
        	
        	$.get("user_findByName.action?time="+new Date().getTime()+"&username="+userName.val(),function(data){
        		userName.next().find("h6").html(data);
        		if(data!="")
        			{
        			   value1=false;
        			}
        		else{
        			value1=true;
        		}
        	});
        }
    })
    password.on("blur",function(){
        if(password.val()=="")
        {
            $(this).next().find("h6").html("！密码不能为空");
            value2=false;
        }
        else{
            $(this).next().find("h6").html("");
            value2=true;
        }
    })
    confirmPassword.on("blur",function(){
        if(password.val()!=confirmPassword.val())
        {
            $(this).next().find("h6").html("！两次密码不一致");
            value3=false;
        }
        else{
            $(this).next().find("h6").html("");
            value3=true;
        }
    })
    email.on("blur",function(){
        var re=/^\w+@[a-z0-9]+\.[a-z]{2,4}$/;
        if(re.test(email.val())){
        	$.get("user_findByEmail.action?time="+new Date().getTime()+"&email="+email.val(),function(data){
        		email.next().find("h6").html(data);
        		if(data!="")
        			{
        			   value4=false;
        			}
        		else{
        			value4=true;
        		}
        	});
        }
        else{
            $(this).next().find("h6").html("！请输入正确的邮箱");
            value4=false;
        }
    })
    function check(){
        return value1&&value2&&value3&&value4;
    }
    $("#regist").on("click",function(e){
    	if(check()){
    	$("#email").modal("show");
    	$("#email").on("shown.bs.modal",function(){
    		    var url=userName.val();
            	$.cookie('username',encodeURI(url));
                //验证通过才使用ajax
                
                $.ajax({
                	type:"POST",
                	url:"user_regist.action",
                	async:false,
                	data:{
                		username:$(".userName").val(),
            	        email:$(".email").val(),
            	        password:$(".password").val()
                	},
                	success:function(data){
                		       		
                	}
                })
            });
    	}    
    	else {
            e.stopPropagation();
            return false;
        }
    })
    //邮箱激活或者稍后激活
    var code=$(".code");
    $(".wait").on("click",function(){
           window.location="user_main.action";
    });
    $(".confirm").on("click",function(){
    	$.get("user_registCode.action?username="+decodeURI(userName.val())+"&code="+code.val()+"&email="+email.val(),function(data){
    		if(data!=""){
    			alert(data);
    		}
    		else window.location="user_main.action";
    	})
    })
            	
})