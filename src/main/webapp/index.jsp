<%@page contentType="text/html; utf-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="zh">
<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta http-equiv="X-UA-Compatible" content="ie=edge" />
	<title>banner轮播</title>
	<link rel="stylesheet" href="css/reset.css">
	<link rel="stylesheet" type="text/css" href="css/swiper.min.css"/>
	<link rel="stylesheet" href="https://cdn.bootcss.com/twitter-bootstrap/4.3.0/css/bootstrap.min.css" />
	<link rel="stylesheet" href="css/animate.css">
	<link rel="stylesheet" href="css/slick.css">
	<link rel="stylesheet" href="css/jquery.fullPage.css" />
	<link rel="stylesheet" href="css/head.css" />
	<link rel="stylesheet" href="css/index.css">
</head>
<body>
	<!-- 导航 -->
	<header class="header"> 
		<div class="container clearfix"> 
			<div class="fl left">
				<a href="javascript:void(0)" ><img src="image/logo.png" alt="" class="img1" /></a>
				<a href="javascript:void(0)" ><img src="image/logo2.jpg" alt="" class="img2" /></a>
			</div>
			<div class="fr nav"> 
				<ul class="navbar_nav" data-in="fadeInDown" data-out="fadeOutUp">
					<li class="active">
						<a href="context.jsp">首页</a>
					</li>
					<li class="dropdown">
						<a href="javascript:void(0)">
							热门游戏
						</a>
						<div class="dropdown_menu">
							<a href="#">Custom Menu</a>
							<a href="#">Custom Menu</a>
							<a href="#">Custom Menu</a>
						</div>
					</li>
					<li class="dropdown">
						<a href="javascript:void(0)">游戏圈</a>
						<div class="dropdown_menu">
							<a href="#">游戏资源</a>
							<a href="#">聊天频道</a>
							<a href="#">技术贴</a>
						</div>
					</li>
					<li>
						<a href="javascript:void(0)">热门交易</a>
					</li>
					<li>
						<a href="javascript:void(0)">用户中心</a>
					</li>
					<li>
						<a href="login.jsp">登录</a>
					</li>

				</ul>
			</div>
			<a href="javascript:void(0)" id="navToggle">
	            <span></span>
	        </a>
		</div>
	</header>
	<!--移动端的导航-->
	<div class="m_nav">
		<div class="top clearfix">
			<img src="image/closed.png" alt="" class="closed" />
		</div>
		<div class="logo">
			<img src="image/logo2.jpg" alt="" />
		</div>
		<ul class="ul" data-in="fadeInDown" data-out="fadeOutUp">
			<li class="active">
				<a href="javascript:void(0)">首页</a>
			</li>
			<li class="dropdown">
				<a href="javascript:void(0)">
					业务体系
				</a>
				<div class="dropdown_menu">
					<a href="#">Custom Menu</a>
					<a href="#">Custom Menu</a>
					<a href="#">Custom Menu</a>
				</div>
			</li>
			<li class="dropdown">
				<a href="javascript:void(0)">直营园</a>
				<div class="dropdown_menu">
					<a href="#">Custom Menu</a>
					<a href="#">Custom Menu</a>
					<a href="#">Custom Menu</a>
				</div>
			</li>
			<li>
				<a href="javascript:void(0)">行知资讯</a>
			</li>
			<li>
				<a href="javascript:void(0)">关于我们</a>
			</li>
			<li>
				<a href="javascript:void(0)">联系合作</a>
			</li>
		</ul>
	</div>
	<!-- 内容 -->
    <div id="index_main" class="index_main">
    	<!--导航-->
        <div class="section section1">
            <div class="index_banner">
                <div class="item">
                    <div class="items scaleBg" style="background-image: url(image/banner1.jpg);"></div>
                    <div class="inner">
                        <div class="block_txt">
                            <h4>Hello Jinruzhe of Game Forum</h4>
                            <h2>让生活因<span>游戏</span>而变得多姿</h2>
							<h3>Happy here, get together here</h3>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="items scaleBg" style="background-image: url(image/2.jpg);"></div>
                    <div class="inner">
			    <div class="block_txt">
				    <h4>Hello Jinruzhe of Game Forum</h4>
				    <h2>让生活因<span>游戏</span>而变得多姿</h2>
				    <h3>Happy here, get together here</h3>
			    </div>
                    </div>
                </div>
                <div class="item">
                    <div class="items scaleBg" style="background-image: url(image/banner2.jpg);"></div>
                    <div class="inner">
                        <div class="block_txt">
                            <h4> </h4>
                            <h2><span>热门游戏</span><br>齐聚一堂</h2>
							<h3>手机游戏  |  ps端游  |  掌机游戏  |  主机游戏</h3>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="items scaleBg" style="background-image: url(image/banner3.jpg);"></div>
                    <div class="inner">
                        <div class="block_txt">
                            <h4> </h4>
                            <h2>这里是热门的<span>游戏交易</span>平台</h2>
							<h3>全程援助  |  个性服务</h3>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="items scaleBg" style="background-image: url(image/banner4.jpg);"></div>
                    <div class="inner">
                        <div class="block_txt">
                            <h4>  </h4>
                            <h2>广泛的游戏圈子</h2>
							<h3>游戏资源  |  聊天频道  |  技术贴</h3>
                        </div>
                    </div>
                </div>            
           	</div>
            <div class="left slick_txt">
                <div class="prev slick_arrow"></div>
            </div>
            <div class="right slick_txt">
                <div class="next slick_arrow"></div>
            </div>
            <div class="number">
                <div class="inner clearfix">
                    <span class="active">01</span>
                    <span >02</span>
                    <span >03</span>
                    <span >04</span>
                    <span >05</span>
                </div>
            </div>
        </div>
        <div class="section section2">
        	<div class="container">
        		<h3>第二页</h3>
        	</div>
        </div>
        <div class="section section3">
        	<div class="container">
        		<h3>第三页</h3>
        	</div>
        </div>
        <div class="section section4">
        	<div class="container">
        		<h3>第四页</h3>
        	</div>
        </div>
    </div>
	<script src="http://libs.baidu.com/jquery/1.11.3/jquery.min.js"></script>
	<script src="https://cdn.bootcss.com/twitter-bootstrap/4.3.0/js/bootstrap.min.js"></script>
	<script src="js/jquery.fullPage.min.js"></script>
	<script src="js/index_slick.js"></script>
	<script src="js/swiper.min.js"></script>
	<script src="js/index.js"></script>
</body>
</html>