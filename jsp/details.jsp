<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/public-style.css">
    <link rel="stylesheet" href="css/detail.css">
    <script src="js/jquery-2.2.1.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
     <script src="js/jquery.cookie.js"></script>
     <script src="js/detail.js"></script>
     <script src="js/main.js"></script>
    <title>商品详情</title>
</head>
<body>
<nav class="navbar navbar-default nav-main">
    <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li><a href="#">帮助</a></li>
                <li><a href="#">购买须知</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#">我的卖场</a></li>
                <li><a href="car_totalPage.action">我的购物车</a></li>
                <li class="myself"><a href="${pageContext.request.contextPath}/user_load.action">登录</a></li>
                <li class="cancel"><a href="${pageContext.request.contextPath}/user_registpage.action">注册</a></li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
<div class="container top">
    <div class="row logo">
        <a href="user_main.action"><img src="image/logo.jpg" alt=""></a>
        <hr class="line">
    </div>
    <div class="separate"></div>
    <div class="row">
        <div class="col-md-6 img">
            <img src="" alt="">
        </div>
        <div class="col-md-6">
           <h2 class="name"></h2>
            <div class="price">
                <h4 class="oprice"></h4>
                <h4 class="nprice">本店促销价：<span></span></h4>
            </div>
            <div class="describe">
                <h4>支持：七天无理由退换货</h4>
                <h4>服务：同城24小时内送达，跨省三天内送达</h4>
            </div>
            <hr/>
            <div class="input-group num">
                <span class="input-group-addon minus">
                    <span class="glyphicon glyphicon-minus" aria-hidden="true"></span>
                </span>
                <input type="text" class="form-control number">
               <span class="input-group-addon plus">
                    <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>
                </span>
            </div>
            <button type="button" class="btn btn-primary btn-lg add">加入购物车</button>
            <button type="button" class="btn btn-default btn-lg buy-now">立即购买</button>

            <span><h6>温馨提示：本商品暂不支持优惠券</h6></span>
        </div>
    </div>
  <div>
  <!-- Nav tabs -->
  <ul class="nav nav-tabs" role="tablist" id="myTabs">
    <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">商品详情</a></li>
    <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">评论</a></li>
  </ul>
  <div class="separate"></div>
  <!-- Tab panes -->
  <div class="tab-content">
    <div role="tabpanel" class="tab-pane active" id="home">...</div>
    <div role="tabpanel" class="tab-pane" id="profile" style="position:relative;">
      <!--这里动态生成评论-->
      <nav style="position:absolute;bottom:0px;">
        <ul class="pager">
    	<li class="prev"><a href="javascript:void(0);">Previous</a></li>
    	<li class="next"><a href="javascript:void(0);">Next</a></li>
  		</ul>
	  </nav>
    </div>
  </div>
  </div>
</div>
<div class="container bottom">
    <hr>
    <div class="our-company">
        <ul>
            <li>
                <a href="#">关于我们</a>
                <a href="#">联系我们</a>
                <a href="#">商家入驻</a>
                <a href="#">友情链接</a>
            </li>
        </ul>
        <h6>版权归一号卖场所有，违者必究</h6>
    </div>
</div>
</body>
</html>