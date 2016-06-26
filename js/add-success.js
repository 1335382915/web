/**
 * Created by qc on 2016/6/11.
 */
$(function(){
   $("#back").on("click",function(){
       window.history.back();
   })
   $("#go").on("click",function(){
	   location.href="car_totalPage.action";
   })
});