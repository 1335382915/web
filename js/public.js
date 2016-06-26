/**
 * Created by qc on 2016/6/4.
 */
$(function(){
    var back=$(".back-to-top");
    var check=false;
    back.on("click",function(){
        $('body,html').animate({scrollTop:0},1000);
        return false;
    });
});
