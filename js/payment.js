$(function(){
	var url=location.search;
	var Request=new Object();
	if(url.indexOf("?")!=-1){
		var s=url.substr(1);
		var s1=s.substring(0,s.indexOf("="));
		var s2=s.substring(s.indexOf("=")+1);
	}
	$.get("orders_totalPrice.action?oid="+s2,function(data){
		$(".totalprice span").html(data+"元");
	});
	
	//购买商品
	$("#buy").on("click",function(){
		$.get("user_returnAddr.action?username="+$.cookie("username"),function(data){
			if(data!=""){
				$.get("orders_updateState.action?oid="+s2,function(data){
					alert("恭喜您！购买成功，我们将为您跳转到订单页面");
					window.location="user_orderPage.action";
				})				
			}
			else{
				alert("请添加地址！！！");
			}
		})
	})
	$(".oid span").html("1000"+s2);
	var cookie=decodeURI($.cookie("username"));
	if(cookie!=""&&cookie!="undefined"){
		$(".myself a").html(cookie).attr("href","user_self.action");
		$(".cancel a").html("注销").attr("href","user_load.action");
	}
	$(".cancel").on("click",function(){
		if($(this).children("a").html()=="注销"){
			$.cookie("username","");
		}
	});
	//让一级分类具有跳转链接的功能
	$(document).on("click",".dropdown-toggle",function(){
		if($(window).width()>767){
			if($(this).attr("href"))
				{
				   window.location=$(this).attr("href");
				}
		}
	})
	$(".dropdown").on("mouseover",function(){
        $(this).find("a").css({"background-color":"white","color":"#ff334b"});
    }).on("mouseout",function(){
        $(this).find("a").css({"background-color":"#ff334b","color":"white"});
    });
	//一级
	$(".dropdown").on("click",function(){
		var $dropt=$(this).find("a");
		var nav_name=$dropt.html().substring(0,$dropt.html().indexOf("<"));
		$dropt.attr("href","categorySecond_search.action?csname="+encodeURI(nav_name));
	});
	//二级
	$(".dropdown-menu li").on("click",function(e)
			{
		        e.stopPropagation();
                cancelBubble=true;
				$(this).children().attr("href","categorySecond_search.action?csname="+encodeURI($(this).children().html()));	
			});
	//搜索
	$("#search").on("click",function(){
		window.location="categorySecond_search.action?pname="+encodeURI($("#search-key").val());
	})
	
	
})