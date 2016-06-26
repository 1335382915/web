<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <title>个人信息</title>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="css/main.css"/>
    <link rel="stylesheet" href="css/public-style.css"/>
    <link rel="stylesheet" href="css/order.css"/>
    <script src="js/jquery-2.2.1.min.js"></script>
    <script src="js/jquery.cookie.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script src="js/public.js"></script>
    <script src="js/myself.js"></script>
    <script src="js/main.js"></script>
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
<div class="container order">
    <div class="separate"></div>
    <div class="row">
        <div class="col-xs-3">
            <div class="left">
                <h4>个人中心</h4>
                <div class="separate"></div>
                <a href="user_self.action" style="color:#ff334b"><h5>我的中心</h5></a>
                <div class="separate"></div>
                <h4>订单中心</h4>
                <div class="separate"></div>
                <a href="user_orderPage.action"><h5>我的订单</h5></a>
                <a href="car_totalPage.action"><h5>我的购物车</h5></a>
            </div>
        </div>
        <div class="col-xs-9">
            <div class="right">
                <div class="my-information">
                    <h4>我的中心</h4>
                    <div class="separate"></div>
                    <div class="portrait">
                        <img src="image/portrait.png" alt="" style="float: left">
                        <span class="name"></span>
                        <div class="separate"></div>
                        <img class="first"src="image/thumb.png" alt="">
                        <img src="image/thumb.png" alt="">
                        <img src="image/thumb.png" alt="">
                        <img src="image/thumb.png" alt="">
                        <div style="float: right"></div>
                        <div class="separate"></div>
                        <div class="form-inline active-email">
                        <div class="form-group">
                            <label for="exampleInputName2">您的账号尚未激活</label>
                            <input type="text" class="form-control" id="email" placeholder="在此输入您的邮箱">
                        </div>
                        <button class="btn btn-default" id="activate">激活</button>
                            <span class="error"></span>
                        </div>
                    </div>

                </div>
                <div class="separate"></div>

                <div class="manage-address">
                    <h4>管理收货地址</h4>
                    <div class="separate buttons"></div>
                    <button type="button" class="btn btn-default btn-lg btn-block" id="add-address">添加新地址</button>
                    <div class="separate"></div>
                    <div class="my-address">
                        <span class="my-name"></span><span class="my-telephone"></span>
                        <span class="my-addr"></span>
                        <span class="update">修改</span>
                    </div>
                </div>
                <div class="separate"></div>

                <div class="recommend">
                    <h3>猜您喜欢</h3>
                    <div class="row">
                        <div class="col-xs-6">
                            <div class="today-picture">
                                <a href="details.html" target="_blank"><img src="image/nike-shose3.jpg" alt=""></a>
                            </div>
                            <div class="today-font">
                                <a href="details.html" target="_blank"><h4 class="black">NIKE AIRMAX 90 最新复刻版</h4></a>
                                <h4 class="red-pink">￥699</h4>
                            </div>
                        </div>
                        <div class="col-xs-6">
                            <div class="today-picture">
                                <a href="#"><img src="image/food2.jpg" alt=""></a>
                            </div>
                            <div class="today-font">
                                <a href="#"><h4 class="black">T8费列罗榛果威化巧克力(100g)</h4></a>
                                <h4 class="red-pink">￥31.2</h4>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-6">
                            <div class="today-picture">
                                <a href="#"><img src="image/cosmetics1.jpg" alt=""></a>
                            </div>
                            <div class="today-font">
                                <a href="#"><h4 class="black">欧莱雅金致臻颜七件套装</h4></a>
                                <h4 class="red-pink">￥1420</h4>
                            </div>
                        </div>
                        <div class="col-xs-6">
                            <div class="today-picture">
                                <a href="#"><img src="image/electric-iphone5se.jpg" alt=""></a>
                            </div>
                            <div class="today-font">
                                <a href="#"><h4 class="black">国行iphone5 SE</h4></a>
                                <h4 class="red-pink">￥3050</h4>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-6">
                            <div class="today-picture">
                                <a href="#"><img src="image/clothing-nike1.jpg" alt=""></a>
                            </div>
                            <div class="today-font">
                                <a href="#"><h4 class="black">新款耐克NIKE足球系列男款短袖T恤</h4></a>
                                <h4 class="red-pink">￥299</h4>
                            </div>
                        </div>
                        <div class="col-xs-6">
                            <div class="today-picture">
                                <a href="#"><img src="image/clothing-adidas1.jpg" alt=""></a>
                            </div>
                            <div class="today-font">
                                <a href="#"><h4 class="black">阿迪达斯运动长裤</h4></a>
                                <h4 class="red-pink">￥420</h4>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>
<div class="bottom">
    <hr class="order-line"/>
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
<!--<div class="mask"></div>-->
<!--<div class="block">-->
    <!--<div class="center"></div>-->
<!--</div>-->
<div class="modal fade" id="myMode">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">创建收货信息</h4>
            </div>
            <div class="modal-body">
                <div class="input-group">
                    <span class="input-group-addon addon">收货人姓名</span>
                    <input type="text" class="form-control rec_name input" placeholder="请务必填写收件人姓名">
                    <span class="warning"><h6></h6></span>
                </div><!-- /input-group -->
                <div class="separate"></div>
                <div class="input-group">
                    <span class="input-group-addon addon">收货人手机</span>
                    <input type="text" class="form-control rec_telephone input" placeholder="请务必填写收件人手机号">
                    <span class="warning"><h6></h6></span>
                </div><!-- /input-group -->
                <div class="separate"></div>
                <div class="input-group">
                    <span class="input-group-addon addon">收件人地址</span>
                    <input type="text" class="form-control rec_address input" placeholder="省+市+区+详细地址">
                    <span class="warning"><h6></h6></span>
                </div><!-- /input-group -->
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" id="save">保存</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

<div class="modal fade" id="send-email">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title">我们已给您的邮箱发送了验证码</h4>
      </div>
      <div class="modal-body">
          <div class="input-group">
          <span class="input-group-addon addon">验证码</span>
        <input type="text" class="form-control code input" placeholder="在此输入您邮箱收到的验证码">
    </div><!-- /input-group -->
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary email-button confirm">确定</button>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->





</body>
</html>