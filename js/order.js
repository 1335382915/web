    $(function(){
    	//alert($.cookie("username"));
    	$.get("user_ordersList.action?username="+$.cookie("username"),function(data){
    		var json=JSON.parse(data);
    		for(var i=json.length-1;i>=0;i--){
    			$order_details=$("<div></div>").addClass("order-details");
    			$span1=$("<span></span>").addClass("order-title").html("订单号："+"1000"+json[i].oid);
    			$span2=$("<span></span>").addClass("order-title").html("金额："+json[i].totalPrice);
    			$span3=$("<span></span>").addClass("order-title");
    			$button1=$("<button></button>").attr("type","button").addClass("btn btn-primary btn-sm confirm-receive").html("确认收货");
    		
    			if(json[i].state=="0"){
    				$span3.html("订单状态：未支付");
    				$button1.css("display","none");
    			}
    			else if(json[i].state=="1"){
    				$span3.html("订单状态：已支付");
    				$button1.css("display","inline");
    				}
    			else{
    				$span3.html("订单状态：已收货");
    				$button1.css("display","none");
    			}
    			$div1=$("<div></div>").addClass("separate");
    			$div2=$("<div></div>").addClass("separate");
    			$div3=$("<div></div>").addClass("separate");
    			$table=$("<table></table>").addClass("table");
    			$thead=$("<thead></thead>");
    			$tr1=$("<tr></tr>");
    			$th1=$("<th></th>").html("商品名");
    			$th2=$("<th></th>").html("单价");
    			$th3=$("<th></th>").html("数量");
    			$th4=$("<th></th>").html("金额");
    			$th5=$("<th></th>").html("添加评论");
    			$tr1.append($th1).append($th2).append($th3).append($th4).append($th5);
    			$thead.append($tr1);
    			$tbody=$("<tbody></tbody>");
    			var json2=json[i].list;
    			for (var j = 0; j < json2.length; j++){
    				$tr2=$("<tr></tr>");
    				$td1=$("<td></td>").html(json2[j].pname);
    				$td2=$("<td></td>").addClass("simpleprice").html(json2[j].price);
    				$td3=$("<td></td>").addClass("num").html(json2[j].count);
    				$td4=$("<td></td>").addClass("totalprice").html(json2[j].totalPrice);
    				$td5=$("<td></td>");
    				if (json[i].state == "2"){
    					if(json2[j].state=="0"){
    						$td5.addClass("addComment").css("cursor","pointer").html("评论");
    					}
                    	else if(json2[j].state=="1"){
                    		$td5.html("已评论");
                    	}
    				} 
    				
    				$tr2.append($td1).append($td2).append($td3).append($td4).append($td5);
    				$tbody.append($tr2);
    			}
    			
    			$table.append($thead).append($tbody);
    			$button2=$("<button></button>").addClass("btn btn-primary").attr({type:"button",id:"pay"}).html("付款").css("display","none");
    			$order_details.append($span1).append($span2).append($span3).append($button1).append($div1).append($table).append($div2).append($button2);
    			$(".my-order").append($order_details).append($div3);
    		}  	     
    		$(".order-details").each(function(){
    			if($(this).children().next().next().html().substring(5)=="未支付"){
    				$(this).children().next().next().next().next().next().next().css("display","block");
    			}
    			$(this).find("#pay").on("click",function(){
    			
        			var data=$(this).prev().prev().prev().prev().prev().prev().html().substring(8);
        			location.href="car_paymentPage.action?oid="+data;
        		})
    		});
    		$(".confirm-receive").on("click",function(){
    			$.get("orders_confirmReceive.action?oid="+$(this).prev().prev().prev().html().substring(8),function(data){
    				location.href="user_orderPage.action";
    			});
    		});
    		var oid;
    		$(".addComment").on("click",function(){
    			var title=$(this).prev().prev().prev().prev().html();
    		    oid=$(this).parent().parent().parent().parent().find("span:first-child").html().substring(8);
    			$("#add-comment").modal("show");
    			$("#add-comment").on('shown.bs.modal', function (e) {
    				  $(".modal-title").html(title);
 
    				});
    		});
    		
    		//提交评论
    		$(".confirm").on("click",function(){
    			//alert($(".modal-title").html()+" "+$(".area").val());
    			
    			$.get("comment_addComment.action?username="+$.cookie("username")+"&pname="+$(".modal-title").html()+"&usercomment="+$(".area").val()+"&date="+oid,
    					function(){
    						location.href="user_orderPage.action";
    			});
    		});
    	});
    	
        
    })