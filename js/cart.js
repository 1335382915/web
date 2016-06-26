    $(function(){
    	//alert($.cookie("username"));
    	$.get("car_total.action?username="+$.cookie("username"),function(data){
    		var json=JSON.parse(data);
    		for(var i=0;i<json.length;i++){
    			var $tr=$("<tr></tr>");
    	    	var $td1=$("<td></td>");
    	    	var $check=$("<input/>").attr("type","checkbox");
    	    	$td1.append($check);
    	    	var $td2=$("<td></td>").html(json[i].pname);
    	    	var $td3=$("<td></td>").addClass("simpleprice").html(json[i].price);
    	    	var $td4=$("<td></td>").addClass("change");
    	    	var $div=$("<div></div>").addClass("input-group").attr("id","num");
    	    	$span1=$("<span></span>").addClass("input-group-addon minus").css("cursor","pointer");
    	        $span2=$("<span></span>").addClass("glyphicon glyphicon-minus").attr("aria-hidden",true);
    	        $span1.append($span2);
    	        $input=$("<input/>").attr({"type":"text","disabled":"disabled"}).addClass("form-control number").val(json[i].count);
    	        $span3=$("<span></span>").addClass("input-group-addon plus").css("cursor","pointer");
    	        $span4=$("<span></span>").addClass("glyphicon glyphicon-plus").attr("aria-hidden",true);
    	        $span3.append($span4);
    	        $div.append($span1).append($input).append($span3);
    	        $td4.append($div);
    	        var $td5=$("<td></td>").addClass("totalprice").html(json[i].totalPrice);
    	        var $td6=$("<td></td>");
    	        var $a=$("<a></a>").attr("href","#").html("删除");
    	        $td6.append($a);
    	        $tr.append($td1).append($td2).append($td3).append($td4).append($td5).append($td6);
    	    	$(".table tbody").append($tr); 
    		}
    	 	var all=$(".sum span");
  	      //  $(".number").val(1);
  	        $("#checkAll").on("click",function() {
  	            //$("td input[type='checkbox']").prop("checked",this.checked);
  	            if($(this).prop("checked")==true){
  	                $("td input[type='checkbox']").each(function(){
  	                    if($(this).prop("checked")==false){
  	                        $(this).prop("checked",true);
  	                    all.html(parseInt(all.html())+parseInt($(this).parent().parent().find(".totalprice").html()));}

  	                })
  	            }
  	            else{
  	                $("td input[type='checkbox']").prop("checked",false);
  	                all.html(0);
  	            }

  	            });
  	        $("td input[type='checkbox']").on("click",function(){
  	            $(this).each(function(){
  	                if($(this).prop("checked")==false)$("#checkAll").prop("checked",false);
  	                var dprice=$(this).parent().parent().find(".simpleprice");
  	                var nums=$(this).parent().parent().find(".number");
  	                var totalprice=$(this).parent().parent().find(".totalprice");
  	               if(($(this).prop("checked"))==true){
  	                   all.html((parseInt(all.html())+(parseInt(dprice.html())*parseInt(nums.val()))).toString());
  	               }
  	                else{
  	                   all.html((parseInt(all.html())-(parseInt(dprice.html())*parseInt(nums.val()))).toString());
  	               }
  	            })
  	        });

  	        $(".minus").on("click",function(){
  	            var plus=$(this).next();
  	            if(parseInt(plus.val())>1){
  	                plus.val(parseInt((plus.val()))-1);
  	                var sprice=parseInt($(this).parent().parent().prev().html());
  	                $(this).parent().parent().next().html(parseInt(plus.val())*sprice);
  	              //  alert($(this).parent().parent().prev().prev().prev().children());
  	                if($(this).parent().parent().prev().prev().prev().children().prop("checked")==true){
  	                all.html(parseInt(all.html())-parseInt($(this).parent().parent().prev().html()));
  	              // }
  	            }
  	        }});
  	        $(".plus").on("click",function(){
  	            var plus=$(this).prev();
  	            if(parseInt(plus.val())<99){
  	                plus.val(parseInt((plus.val()))+1);
  	                var sprice=parseInt($(this).parent().parent().prev().html());
  	                $(this).parent().parent().next().html(parseInt(plus.val())*sprice);
  	                if($(this).parent().parent().prev().prev().prev().children().prop("checked")==true){
  	                all.html(parseInt(all.html())+parseInt($(this).parent().parent().prev().html()));
  	            }
  	            }
  	        });
  	        //删除
  	        $(".table a").on("click",function(){
  	        	$.get("car_delete.action?username="+$.cookie("username")+"&pname="+$(this).parent().prev().prev().prev().prev().html(),
  	        	function(data){
  	        		alert("删除成功！！！");
  	        		window.location="car_deletePage.action";
  	        		return false;
  	        	});
  	        	
  	        });
    	});
    	
    	var arr=[];
    	$("#save").on("click",function(){
    		$("td input[type='checkbox']").each(function(){
    			if($(this).prop("checked")==true){
    				var obj={};
    				obj.username=$.cookie("username");
    				obj.pname=$(this).parent().next().html();
    				obj.count=$(this).parent().next().next().next().find("input").val();
    				obj.price=$(this).parent().next().next().html();
    				obj.totalPrice=$(this).parent().next().next().next().next().html();
    				arr.push(obj);
    			}
    		});
    		  $.ajax({
              	type:"POST",
              	url:"productList_addOrder.action",
              	async:false,
              	data:{
              		p:JSON.stringify(arr)
              	},
              	success:function(data){
              		
              		window.location="car_paymentPage.action?oid="+data;
              	}
              })
    	});
    	
        
    })