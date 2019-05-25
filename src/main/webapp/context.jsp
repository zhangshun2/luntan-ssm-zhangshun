<%@page contentType="text/html; utf-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8"/>
    <meta http-equiv = "X-UA-Compatible" content = "IE=edge,chrome=1" />
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE9" />
    <meta name="robots" content="all">
    <meta name="author" content="Tencent-CP">
    <meta name="Copyright" content="Tencent">
    <meta name="Description" content="">
    <meta name="Keywords" content="">
    <title>一屏切换带弹窗</title>
    <link rel="stylesheet" href="css/jquery.mCustomScrollbar.css">
    <link href="css/bootstrap-touch-slider.css" rel="stylesheet" media="all">
    <link rel="stylesheet" type="text/css" href="http://www.jq22.com/jquery/bootstrap-3.3.4.css">
    <link rel="stylesheet" href="css/animate.css">
    <link rel="stylesheet" href="css/main.css">

</head>
<body style="overflow: hidden;">
<div class="bg bg-fruits">
    <div class="header header-bg">
        <div class="header-box">
            <img class="header-logo" src="images/logo.png" alt="logo">
            <div class="header-r">
                <div class="nav">
                    <ul>
                        <li>
                            <div class="Navigation">
                                <a href="javascript:;">首页</a>
                            </div>
                        </li>
                        <li>
                            <div class="Navigation">
                                <a href="${pageContext.request.contextPath}/showgame?ttype=1">手机游戏</a>
                                <div>
                                    <a href="javascript:;">新闻</a>
                                    <a href="javascript:;">新闻</a>
                                    <a href="javascript:;">新闻</a>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="Navigation">
                                <a href="${pageContext.request.contextPath}/showgame?ttype=2">电脑端游戏</a>
                                <div>
                                    <a href="javascript:;">关于我们</a>
                                    <a href="javascript:;">关于我们</a>
                                    <a href="javascript:;">关于我们</a>
                                    <a href="javascript:;">关于我们</a>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="Navigation">
                                <a href="javascript:;">掌机游戏</a>
                                <div>
                                    <a href="javascript:;">新闻</a>
                                    <a href="javascript:;">新闻</a>
                                    <a href="javascript:;">新闻</a>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="Navigation">
                                <a href="javascript:;">主机游戏</a>
                                <div>
                                    <a href="javascript:;">关于我们</a>
                                    <a href="javascript:;">关于我们</a>
                                    <a href="javascript:;">关于我们</a>
                                    <a href="javascript:;">关于我们</a>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div id="pageContain" class="fruits">
        <c:forEach var="game" items="${sessionScope.game}">

            <div class="page page1">
                <h3>${game.gname}<br><span>January</span></h3>
                <div class="fruits-box">
                    <!-- pro_page -->
                    <div id="bootstrap-touch-slider" class="carousel bs-slider fade  control-round indicators-line" data-ride="carousel" data-pause="hover" data-interval="false" >
                        <!-- Indicators -->
                        <ol class="carousel-indicators">
                            <li data-target="#bootstrap-touch-slider" data-slide-to="0" class="active">
                                <img src="images/fruits_img_03.jpg" alt="">
                                <div class="pro-icon-bg"><c:if test="${game.gpower}>=1">热门游戏</c:if></div>
                            </li>

                        </ol>
                        <!-- Wrapper For Slides -->
                        <div class="carousel-inner" role="listbox">
                            <!-- Third Slide -->
                            <div class="item active">
                                <!-- Slide Background -->
                                <img data-animation="animated fadeInUp1" class="slide-image" src="images/pro_img_03.jpg" alt="">
                                <!-- Slide Text Layer -->
                                <div class="slide-text slide_style_left">

                                    <p data-animation="animated fadeInUp1">
                                        ${game.gcontext}
                                        <br/></p>
                                    <a data-animation="animated fadeInUp1" href="javascript:;" class="tm-btn-clk tm-btn1"  onclick="del()">了解详情<img src="images/jt_icon3.png" alt=""></a>
                                </div>
                            </div>

                        </div><!-- End of Wrapper For Slides -->
                    </div>
                    <!-- pro_page_end -->
                </div>
            </div>

        </c:forEach>

        <div class="page page1">
            <h3>四月份<br><span>April</span></h3>

        </div>
        <div class="page page1">
            <h3>五月份<br><span>May</span></h3>

        </div>
        <div class="page page1">
            <h3>六月份<br><span>June</span></h3>

        </div>
        <div class="page page1">
            <h3>七月份<br><span>July</span></h3>

        </div>
    </div>
    <ul id="navBar">
        <li><p>一月</p></li>
        <li><p>二月</p></li>
        <li><p>三月</p></li>
        <li><p>四月</p></li>
        <li><p>五月</p></li>
        <li><p>六月</p></li>
        <li><p>七月</p></li>
    </ul>
</div>
<!-- 产品内页弹窗 -->
<div class="sidebar-box">
    <div class="mask" style="display: none"></div>
    <div class="info-box pro-info-box">
        <!-- 产品内页弹窗 -->
        <div class="sidebar-bg" style="width: 100%; height: 100%; display: none; position: fixed; top:0; left:0;"></div>
        <div class="pro-info-box1" style="filter:">
            <div class="close-btn"></div>
            <div class="store-li clearfix">

            </div>
            <div><span class="pro-title1">名称</span><img src="images/info_img_05.jpg" alt=""></div>
            <div class="pro-info content-1">
                <p>贡柑果形美观，皮色橙黄至橙红，皮薄多汁，果肉脆嫩，爽口化渣，清甜低酸，风味独特，广受消费者欢迎。</p>
                <p>贡柑果形美观，皮色橙黄至橙红，皮薄多汁，果肉脆嫩，爽口化渣，清甜低酸，风味独特，广受消费者欢迎。</p>
                <p>贡柑果形美观，皮色橙黄至橙红，皮薄多汁，果肉脆嫩，爽口化渣，清甜低酸，风味独特，广受消费者欢迎。</p>
                <p>贡柑果形美观，皮色橙黄至橙红，皮薄多汁，果肉脆嫩，爽口化渣，清甜低酸，风味独特，广受消费者欢迎。</p>
                <p>贡柑果形美观，皮色橙黄至橙红，皮薄多汁，果肉脆嫩，爽口化渣，清甜低酸，风味独特，广受消费者欢迎。</p>
                <p>贡柑果形美观，皮色橙黄至橙红，皮薄多汁，果肉脆嫩，爽口化渣，清甜低酸，风味独特，广受消费者欢迎。</p>
                <p>贡柑果形美观，皮色橙黄至橙红，皮薄多汁，果肉脆嫩，爽口化渣，清甜低酸，风味独特，广受消费者欢迎。</p>
                <p>贡柑果形美观，皮色橙黄至橙红，皮薄多汁，果肉脆嫩，爽口化渣，清甜低酸，风味独特，广受消费者欢迎。</p>
                <p>贡柑果形美观，皮色橙黄至橙红，皮薄多汁，果肉脆嫩，爽口化渣，清甜低酸，风味独特，广受消费者欢迎。</p>
                <p><img src="images/fruits_img_16.jpg" alt=""></p>
                <p>贡柑果形美观，皮色橙黄至橙红，皮薄多汁，果肉脆嫩，爽口化渣，清甜低酸，风味独特，广受消费者欢迎。</p>
                <p>贡柑果形美观，皮色橙黄至橙红，皮薄多汁，果肉脆嫩，爽口化渣，清甜低酸，风味独特，广受消费者欢迎。</p>
                <p>贡柑果形美观，皮色橙黄至橙红，皮薄多汁，果肉脆嫩，爽口化渣，清甜低酸，风味独特，广受消费者欢迎。</p>
                <p>贡柑果形美观，皮色橙黄至橙红，皮薄多汁，果肉脆嫩，爽口化渣，清甜低酸，风味独特，广受消费者欢迎。</p>
                <p>贡柑果形美观，皮色橙黄至橙红，皮薄多汁，果肉脆嫩，爽口化渣，清甜低酸，风味独特，广受消费者欢迎。</p>
                <p>贡柑果形美观，皮色橙黄至橙红，皮薄多汁，果肉脆嫩，爽口化渣，清甜低酸，风味独特，广受消费者欢迎。</p>
                <p>贡柑果形美观，皮色橙黄至橙红，皮薄多汁，果肉脆嫩，爽口化渣，清甜低酸，风味独特，广受消费者欢迎。</p>
                <p>贡柑果形美观，皮色橙黄至橙红，皮薄多汁，果肉脆嫩，爽口化渣，清甜低酸，风味独特，广受消费者欢迎。</p>
                <p>贡柑果形美观，皮色橙黄至橙红，皮薄多汁，果肉脆嫩，爽口化渣，清甜低酸，风味独特，广受消费者欢迎。</p>
            </div>
        </div>
    </div>
</div>
<script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/wow.js"></script>
<script src="js/fullPage.min.js"></script>
<script src="js/script.js"></script>
<script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
<script>
	var runPage;
    runPage = new FullPage({
    id: 'pageContain',
    slideTime: 800,
    effect: {
        transform: {
            scale: [1, 1]
        },
        opacity: [0, 1]
    },
    mode: 'wheel, touch, nav:navBar',
    easing: 'ease',
    continuousVertical: 'true'
	});
</script>
<script>
	$(".tm-btn1").click(function () {
		$("html").unbind("mode");
		$('.fruits').attr('id','pageContain2');
		if($(".mask").display = "block"){
			$("html").bind('mousewheel', function (event, delta) {
				return false;
			});
		}
	});
	$(".mask").click(function () {
		$("html").unbind("mousewheel");

	});
	$(".close-btn").click(function () {
		$("html").unbind("mousewheel");
	});
</script>
<script>
		(function($){
			$(window).load(function(){
				$(".content-1").mCustomScrollbar({
					theme:"minimal"
				});
			});
		})(jQuery);
</script>
</body>
</html>