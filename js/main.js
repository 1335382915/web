$(function(){
	var url=location.search;
	var Request=new Object();
	if(url.indexOf("?")!=-1){
		var s=url.substr(1);
		var s1=s.substring(0,s.indexOf("="));
		var s2=s.substring(s.indexOf("=")+1);
	}
	function insert(data,str){
		var json=JSON.parse(data);
		//追加商品
		for(var i=0;i<json.length;i++){
		       var $col_xs_4=$("<div></div>").attr("class","col-xs-4");
		        var $picture=$("<div></div>").attr("class","today-picture");
		        var $a_img=$("<a></a>").attr({href:"product_Detail.action?pname="+json[i].name,target:"_blank"});
		        var $img=$("<img/>").attr("src","image/product/"+json[i].url);
		        $a_img.append($img);
		        $picture.append($a_img);
		        var $font=$("<div></div>").attr("class","today-font");
		        var $a_text=$("<a></a>").attr({href:"product_Detail.action?pname="+json[i].name,target:"_blank"});
		        var $h4=$("<h4></h4>").attr("class","black");
		        $h4.html(json[i].name);
		        var $h4_red=$("<h4></h4>").attr("class","red-pink").html("￥"+json[i].price);
		        $a_text.append($h4);
		        $font.append($a_text).append($h4_red);
		        $col_xs_4.append($picture).append($font);
		        $(str).append($col_xs_4);
		    }
	}
	$.get("categorySecond_find.action?csname="+s2,function(data){
		insert(data,".row");
	});
	if(s1=="pname"){
	$("#search-key").val(decodeURI(s2));
	$.get("product_find.action?pname="+s2,function(data){
		insert(data,"#search-result .row");
	});
	}

	
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
	
	$.get("productList_hot.action",function(data){
		insert(data,".nearday");
	})
	
	$.get("productList_recommand.action",function(data){
		insert(data,".recommand");
	})
})