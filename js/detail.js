/**
 * Created by qc on 2016/6/4.
 */
$(function(){
	
	var page=1;
	var url=location.search;
	var Request=new Object();
	if(url.indexOf("?")!=-1){
		var s=url.substr(1);
		var s1=s.substring(0,s.indexOf("="));
		var s2=s.substring(s.indexOf("=")+1);
	}
	//alert(decodeURI(s2));
	//页面加载后先从url获取dname，给后端传过去
	$.get("product_findDetail.action?pname="+s2,function(data){
		//alert(data);
		var json=JSON.parse(data)[0];
		$(".img img").attr("src","image/product/"+json.url);
		$(".name").html(json.name);
		$(".oprice").html("原价：￥"+json.marketPrice);
		$(".nprice span").html("￥"+json.price);
	});
	
	$('#myTabs a').click(function (e) {
		  e.preventDefault()
		  $(this).tab('show');
		});
	$("#myTabs a:last").on('shown.bs.tab', function (e) {
		  e.target // newly activated tab
		  e.relatedTarget // previous active tab
		  $.get("product_comment.action?pname="+s2+"&pid="+page,function(data){
			   var json=JSON.parse(data);
			   for(var i=0;i<json.length;i++){
				   var $div1=$("<div></div>").addClass("panel panel-default");
				   var $div2=$("<div></div>").addClass("panel-heading").html(json[i].username);
				   var $div3=$("<div></div>").addClass("panel-body").html(json[i].usercomment+"<p class='text-right'>"+json[i].date+"</p>");
				   $div1.append($div2).append($div3);
				   $("#profile").append($div1);
			   }			   
		  })
		})
	$(".prev").on("click",function(){
		if(page>1){
		page--;}
		$.get("product_comment.action?pname="+s2+"&pid="+page,function(data){
			   var json=JSON.parse(data);
			   $("#profile").children(".panel").remove();
			   for(var i=0;i<json.length;i++){
				   var $div1=$("<div></div>").addClass("panel panel-default");
				   var $div2=$("<div></div>").addClass("panel-heading").html(json[i].username);
				   var $div3=$("<div></div>").addClass("panel-body").html(json[i].usercomment+"<p class='text-right'>"+json[i].date+"</p>");
				   $div1.append($div2).append($div3);
				   $("#profile").append($div1);
			   }	
			   location.href="product_Detail.action?pname="+s2+"#profile";
		  })
	})
	$(".next").on("click",function(){
		page++;
		$.get("product_comment.action?pname="+s2+"&pid="+page,function(data){
			   var json=JSON.parse(data);
			   if(json.length==0){
				   page--;
			   }
			   else{
				   $("#profile").children(".panel").remove();
			   for(var i=0;i<json.length;i++){
				   var $div1=$("<div></div>").addClass("panel panel-default");
				   var $div2=$("<div></div>").addClass("panel-heading").html(json[i].username);
				   var $div3=$("<div></div>").addClass("panel-body").html(json[i].usercomment+"<p class='text-right'>"+json[i].date+"</p>");
				   $div1.append($div2).append($div3);
				   $("#profile").append($div1);
			   }	
			   }		
			   location.href="product_Detail.action?pname="+s2+"#profile";
		  })
	})
	
	$(".add").on("click",function(){
		 if($.cookie("username")){
			 $.get("user_returnState.action?username="+$.cookie("username"),function(data){
				 if(data=="0"){
					 alert("您的邮箱尚未激活！");
					 window.open("user_self.action", "_blank");
				 } 
				 else{
					 $.ajax({
			              	type:"POST",
			              	url:"car_add.action",
			              	async:false,
			              	data:{
			              		username:$.cookie("username"),
			          	        pname:$(".name").html(),
			          	        price:$(".nprice span").html().substring(1),
			          	        count:$(".number").val()
			          	        
			              	},
			              	success:function(data){
			              	    location.href="car_addSuccess.action";  		
			              	}
			              });
				 }
			 });
		
		    }
		    else{
		    	alert("您尚未登录！！");
		    }
	});
	var arr=[];
	$(".buy-now").on("click",function(){
		if($.cookie("username")){
			 $.get("user_returnState.action?username="+$.cookie("username"),function(data){
				 if(data=="0"){
					 alert("您的邮箱尚未激活！");
					 window.open("user_self.action", "_blank");
				 } 
				 else{
					 var obj={};
					 obj.username=$.cookie("username");
					 obj.pname=$(".name").html();
					 obj.price=$(".nprice span").html().substring(1);
					 obj.count=$(".number").val();
					 obj.totalPrice=parseInt(obj.price)*parseInt(obj.count);
					 arr.push(obj);
					 $.ajax({
			              	type:"POST",
			              	url:"productList_buyNow.action",
			              	async:false,
			              	data:{
			          	        p:JSON.stringify(arr)
			              	},
			              	success:function(data){
			              	    location.href="car_paymentPage.action?oid="+data;  		
			              	}
			              });
				 }
			 });
		
		    }
		    else{
		    	alert("您尚未登录！！");
		    }
	});
    var minus=$(".minus");
    var plus=$(".plus");
    var number=$(".number");
    number.val(1);
    plus.on("click",function(){
        number.val(parseInt(number.val())+1)
    });
    minus.on("click",function(){
        if(parseInt(number.val())==1){
            number.val(1);
        }
        else{
            number.val(parseInt((number.val()))-1);
        }
    });
    number.on("focus",function(){
        if(parseInt($(this).val())>=99){
            $(this).val(99);
        }
    });
    //添加到购物车
});