/**
 * Created by qc on 2016/6/4.
 */
$(function(){
   var seconds=$(".seconds");
    var time=null;
    time=setInterval(function(){
        seconds.html(parseInt(seconds.html())-1);
        if(parseInt(seconds.html())==0){
            clearInterval(time);
            window.location="user_main.action";
        }
    },1000);
});