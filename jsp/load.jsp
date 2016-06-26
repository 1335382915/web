<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/load.css">
    <link rel="stylesheet" href="css/public-style.css">
    <script src="js/jquery-2.2.1.min.js"></script>
     <script src="js/jquery.cookie.js"></script>
    <script src="js/public.js"></script>
    <title>登录</title>
</head>
<body>
     <div class="container top">
         <div class="row">
             <a href="user_main.action"><img src="image/logo.jpg" alt=""></a>
             <hr class="line">
         </div>
         <div class="separate"></div>
         <div class="row">
             <div class="col-md-6">
                 <img src="image/load.jpg" alt="">
             </div>
             <div class="col-md-6">
                 
                <div class="load">	
                     <div class="input-group">
                         <span class="input-group-addon">账 号</span>
                         <input type="text" class="form-control userName" name="username" placeholder="">
                         <span class="warning"><h6></h6></span>
                     </div><!-- /input-group -->
                     <div class="separate"></div>
                     <div class="separate"></div>
                     <div class="input-group">
                         <span class="input-group-addon">密 码</span>
                         <input type="password" class="form-control password" name="password" placeholder="">
                         <span class="warning"><h6></h6></span>
                     </div><!-- /input-group -->
                     <div class="separate"></div>
                     <div class="separate"></div>
                     <button class="btn btn-default" id="load">登 录</button>
                 </div>
                     <div class="separate"></div>
                     <a href="user_registpage.action" class="not-regist"><h5>尚未注册？</h5></a>
                     <hr/>
                     <img src="image/load-right.jpg" alt="">
            
             </div>
         </div>
     </div>
     <script src="js/load.js"></script>
</body>
</html>