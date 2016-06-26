<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <title>我的购物车</title>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="css/main.css"/>
    <link rel="stylesheet" href="css/public-style.css"/>
    <link rel="stylesheet" href="css/order.css"/>
    <link rel="stylesheet" href="css/detail.css"/>
    <script src="js/jquery-2.2.1.min.js"></script>
    <script src="js/jquery.cookie.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script src="js/public.js"></script>
    <script src="js/cart.js"></script>
    <script src="js/main.js"></script>
</head>
<body>
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
                <a href="user_self.action"><h5>我的中心</h5></a>
                <div class="separate"></div>
                <h4>订单中心</h4>
                <div class="separate"></div>
                <a href="user_orderPage.action"><h5>我的订单</h5></a>
                <a href="car_totalPage.action" style="color:#ff334b"><h5>我的购物车</h5></a>
            </div>
        </div>
        <div class="col-xs-9">
            <div class="right">
               <div class="my-cart">
                   <h4>我的购物车</h4>
                   <div class="separate"></div>
                   <table class="table">
                       <thead>
                       <tr>
                           <th>
                               <input type="checkbox"id="checkAll">全选
                           </th>
                           <th>商品名</th>
                           <th>单价</th>
                           <th>数量</th>
                           <th>金额</th>
                           <th>操作</th>
                       </tr>
                       </thead>
                       <tbody>
                                
                       </tbody>
                   </table>
                   <div class="separate"></div>
                   <h4 class="sum">合计：￥<span>0</span></h4>
                   <button type="button" class="btn btn-primary" id="save">结算</button>
               </div>
                <div class="separate"></div>


                <div class="separate"></div>

                <div class="recommend">
                    <h3>猜您喜欢</h3>
                    <div class="row">
                        <div class="col-xs-6">
                            <div class="today-picture">
                                <a href="../details.html" target="_blank"><img src="image/nike-shose3.jpg" alt=""></a>
                            </div>
                            <div class="today-font">
                                <a href="../details.html" target="_blank"><h4 class="black">NIKE AIRMAX 90 最新复刻版</h4></a>
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
</body>
</html>