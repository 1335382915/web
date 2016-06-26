<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <title>一号卖场</title>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="css/administrator/main.css"/>
    <link rel="stylesheet" href="css/administrator/public-style.css"/>
    <script src="js/jquery-2.2.1.min.js"></script>
    <script src="js/jquery.cookie.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script src="js/administrator/public.js"></script>
    <script src="js/administrator/main.js"></script>
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
                <li><a href="car_totalPage.action">订单管理</a></li>
                <li class="myself"><a href="${pageContext.request.contextPath}/user_load.action">登录</a></li>
                <li class="cancel"><a href="${pageContext.request.contextPath}/user_registpage.action">注册</a></li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
<div class="container main-search"><!--输入框和logo-->
    <div class="logo">
       <a href="user_main.action"><img src="image/logo.jpg" alt=""></a>
    </div>
    <div class="input-group">
        <input type="text" class="form-control" placeholder="你想要的,这里都有" id="search-key">
        <button class="btn btn-default" type="button" id="search">搜索</button>
    </div><!-- /input-group -->
</div><!-- /.container-->
<div class="second-nav">
    <ul class="container">
            <ul class="nav navbar-nav">
                <li class="dropdown">
                    <a href="categorySecond_search.action" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">女装男装<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="categorySecond_search.action">潮流女装</a></li>
                        <li><a href="categorySecond_search.action">初冬羽绒</a></li>
                        <li><a href="categorySecond_search.action">毛呢大衣</a></li>
                        <li><a href="categorySecond_search.action">温暖毛衣</a></li>
                        <li><a href="categorySecond_search.action">精选男装</a></li>
                        <li><a href="categorySecond_search.action">冬季外套</a></li>
                        <li><a href="categorySecond_search.action">羽绒服</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="categorySecond_search.action" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">鞋靴箱包<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="categorySecond_search.action">女鞋</a></li>
                        <li><a href="categorySecond_search.action">男鞋</a></li>
                        <li><a href="categorySecond_search.action">短靴</a></li>
                        <li><a href="categorySecond_search.action">女包</a></li>
                        <li><a href="categorySecond_search.action">男包</a></li>
                        <li><a href="categorySecond_search.action">服饰配件</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="categorySecond_search.action" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">运动户外<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="categorySecond_search.action">运动鞋</a></li>
                        <li><a href="categorySecond_search.action">运动服</a></li>
                        <li><a href="categorySecond_search.action">户外运动</a></li>
                        <li><a href="categorySecond_search.action">健身装备</a></li>
                        <li><a href="categorySecond_search.action">骑行装备</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="categorySecond_search.action" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">珠宝配饰<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="categorySecond_search.action">珠宝首饰</a></li>
                        <li><a href="categorySecond_search.action">时尚饰品</a></li>
                        <li><a href="categorySecond_search.action">品质手表</a></li>
                        <li><a href="categorySecond_search.action">眼镜配饰</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="categorySecond_search.action" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">手机数码<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="categorySecond_search.action">手机</a></li>
                        <li><a href="categorySecond_search.action">平板</a></li>
                        <li><a href="categorySecond_search.action">电脑</a></li>
                        <li><a href="categorySecond_search.action">相机</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="categorySecond_search.action" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">家电办公<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="categorySecond_search.action">大家电</a></li>
                        <li><a href="categorySecond_search.action">厨房电器</a></li>
                        <li><a href="categorySecond_search.action">生活电器</a></li>
                        <li><a href="categorySecond_search.action">个户电器</a></li>
                        <li><a href="categorySecond_search.action">办公耗材</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="categorySecond_search.action" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">护肤彩妆<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="categorySecond_search.action">美容护肤</a></li>
                        <li><a href="categorySecond_search.action">强效保养</a></li>
                        <li><a href="categorySecond_search.action">超值彩妆</a></li>
                        <li><a href="categorySecond_search.action">换季保养</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="categorySecond_search.action" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">家居饰品<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="categorySecond_search.action">组合柜</a></li>
                    </ul>
                </li>
            </ul>
    </ul>
</div>
<div class="separate"></div>
<div class="separate"></div>
<div class="container today" id="search-result">
    <div class="row">
        
    </div>
    <div class="separate"></div>
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
<div class="back-to-top">
    <span class="glyphicon glyphicon-chevron-up" aria-hidden="true"></span>
</div>
</body>
</html>