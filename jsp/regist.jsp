<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/regist.css">
    <link rel="stylesheet" href="css/public-style.css">
    <script src="js/jquery-2.2.1.min.js"></script>
     <script src="js/jquery.cookie.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script src="js/public.js"></script>
    <title>注册</title>
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
            <div class="regist">
                <div class="input-group">
                    <span class="input-group-addon">您的账号</span>
                    <input type="text" class="form-control userName" name="username"placeholder="">
                    <span class="warning"><h6></h6></span>
                </div><!-- /input-group -->
                <div class="separate"></div>
                <div class="input-group">
                    <span class="input-group-addon">您的邮箱</span>
                    <input type="text" name="email" class="form-control email" placeholder="">
                    <span class="warning"><h6></h6></span>
                </div><!-- /input-group -->
                <div class="separate"></div>
                <div class="input-group">
                    <span class="input-group-addon">您的密码</span>
                    <input type="password" class="form-control password" name="password" placeholder="">
                    <span class="warning"><h6></h6></span>
                </div><!-- /input-group -->
                <div class="separate"></div>
                <div class="input-group">
                    <span class="input-group-addon">确认密码</span>
                    <input type="password" class="form-control confirmPassword" name="repassword" placeholder="">
                    <span class="warning"><h6></h6></span>
                </div><!-- /input-group -->
                <div class="separate"></div>
                <button  class="btn btn-default" id="regist">点此注册</button>
             </div>
            <div class="separate"></div>
            <a href="user_load.action" class="not-regist"><h5>已经注册？</h5></a>
            <hr/>
            <img src="image/regist-right.jpg" alt="">
        </div>
    </div>
</div>
<div class="modal fade" id="email">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title">我们已给您的邮箱发送了验证码</h4>
      </div>
      <div class="modal-body">
          <div class="input-group">
          <span class="input-group-addon">验证码</span>
        <input type="text" class="form-control code" placeholder="在此输入您邮箱收到的验证码">
    </div><!-- /input-group -->
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary email-button confirm">确定</button>
        <button type="button" class="btn btn-primary email-button wait">稍后激活</button>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<script src="js/regist.js"></script>
</body>
</html>