<%@page contentType="text/html; utf-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="utf-8">
    <title>游戏论坛</title>

    <link type="text/css" rel="stylesheet" href="//www.nga.cn/s/style/v5.css?00003" media="all" charset="utf-8">
    <link rel="shortcut icon" href="http://bbs.nga.cn/favicon.ico">

    <script type="text/javascript" src="//www.nga.cn/s/js/jquery-1.12.4.min.js" charset="utf-8"></script>
    <script type="text/javascript" src="//www.nga.cn/s/js/jquery.masonry.min.js" charset="utf-8"></script>
    <script type="text/javascript" src="//www.nga.cn/s/js/v5.js?00001" charset="utf-8"></script>
    <script type="text/javascript" src="http://gg.stargame.com/g.js"></script>
    <base target="_blank">
    <!-- 引入 Bootstrap -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 Shiv 和 Respond.js 用于让 IE8 支持 HTML5元素和媒体查询 -->
    <!-- 注意： 如果通过 file://  引入 Respond.js 文件，则该文件无法起效果 -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
    <%--<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>--%>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>
<script>var _NotLoadNgaNavAll=1</script>
<script type="text/javascript" src="//img4.nga.178.com/common_res/js_mainMenuLite.js?201545"></script>
<%--<script>document.write(_ngaNavAll_1503071021(1))</script>
<style>#mainMenu20180622{margin-bottom:0;height:65px}</style>--%>





<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
    <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button> <a class="navbar-brand" href="#">Brand</a>
    </div>

    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
        <ul class="nav navbar-nav">
            <li class="active">
                <a href="#">Link</a>
            </li>
            <li>
                <a href="#">Link</a>
            </li>
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown<strong class="caret"></strong></a>
                <ul class="dropdown-menu">
                    <li>
                        <a href="#">Action</a>
                    </li>
                    <li>
                        <a href="#">Another action</a>
                    </li>
                    <li>
                        <a href="#">Something else here</a>
                    </li>
                    <li class="divider">
                    </li>
                    <li>
                        <a href="#">Separated link</a>
                    </li>
                    <li class="divider">
                    </li>
                    <li>
                        <a href="#">One more separated link</a>
                    </li>
                </ul>
            </li>
        </ul>
        <form class="navbar-form navbar-left" role="search">
            <div class="form-group">
                <input type="text" class="form-control" />
            </div> <button type="submit" class="btn btn-default">Submit</button>
        </form>
        <ul class="nav navbar-nav navbar-right">
            <li>
                <a href="#">Link</a>
            </li>
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown<strong class="caret"></strong></a>
                <ul class="dropdown-menu">
                    <li>
                        <a href="#">Action</a>
                    </li>
                    <li>
                        <a href="#">Another action</a>
                    </li>
                    <li>
                        <a href="#">Something else here</a>
                    </li>
                    <li class="divider">
                    </li>
                    <li>
                        <a href="#">Separated link</a>
                    </li>
                </ul>
            </li>
        </ul>
    </div>
</nav>



<hr>
<hr>
<hr>
<hr>

<div class="block01">
    <div class="scrollA blockHotImgs">
        <div></div>
        <div class="scrollB">
            <div class="scrollC">
                <c:forEach var="game" items="${sessionScope.gamedto[0].list}">
                    <div class="scrollD">
                        <div class="maskFilter" style="background-image:url(${pageContext.request.contextPath}/${game.gurl})"></div>
                        <a class="pic" href="${pageContext.request.contextPath}/${game.gurl}" title="${game.gname}">
                            <img src="${pageContext.request.contextPath}/${game.gurl} alt="${game.gcontext}">
                        </a>
                        <div class="txt">
                            <a href="#" title="" target="_blank"><h2 class="tit">${game.gname} : ${game.gcontext}</h2></a>
                        </div>
                    </div>
                </c:forEach>


            </div>
        </div>
        <div class="scrollF"></div>
        <div class="scrollG">
            <div class="scrollE"></div>
        </div>
        <div class="scrollL"></div>
        <div class="scrollR"></div>
    </div>
</div>
<div class="body clearfix">
    <div class="boxL">
        <div class="block02"><!--导航-->
            <ul class="clearfix sub01">
                <li data-tagName="热帖"><a href="http://nga.cn/" target="_self">全部</a></li>
                <li data-tagName="什么值得玩"><a href="http://nga.cn/v/smzdw/" target="_self">手机游戏</a></li>
                <li data-tagName="魔兽世界"><a href="http://nga.cn/v/wow/" target="_self">电脑游戏</a></li>
                <li data-tagName="NGA档案馆"><a href="http://nga.cn/v/archive/" target="_self">掌机游戏</a></li>
                <li data-tagName="炉石传说"><a href="http://nga.cn/v/hs/" target="_self">手机游戏</a></li>

            </ul>
        </div>

        <div class="block03"><!--第一部分内容-->
            <ul class="topics">
                <li class="clearfix li">
                    <div class="img"><a href="https://bbs.nga.cn/read.php?tid=17354243" style="background-image:url(https://img.nga.178.com/attachments/mon_201905/24/-p219Q5-f8rKwT1kSdw-5b.jpg)"><div class="imghide"><div class="posi"><strong class="cn">炉石传说</strong><span class="en">read more</span></div></div></a></div>
                    <div class="txt">
                        <h2 class="tit">
                            <a href="https://bbs.nga.cn/read.php?tid=17354243" title="炉石冒险第三章开启 斗鱼明星主播陪你冲冲冲！">炉石冒险第三章开启 斗鱼明星主播陪你冲冲冲！</a>
                        </h2>
                        <p class="dig">达拉然大劫案的故事已经讲到了第三章，回复本帖即可参与抽取3份388战网点的奖励。</p>
                        <div class="oth">
                            <span class="f">炉石传说</span>
                            <span class="a">Adder59</span>
                            <span class="d">2019.05.24</span>
                        </div>
                    </div>
                </li>
                <li class="clearfix li">
                    <div class="img"><a href="https://bbs.nga.cn/read.php?tid=17354082" style="background-image:url(https://img.nga.178.com/attachments/mon_201905/24/-p219Q5-be7eK11T1kSdw-5b.jpg)"><div class="imghide"><div class="posi"><strong class="cn">英雄联盟</strong><span class="en">read more</span></div></div></a></div>
                    <div class="txt">
                        <h2 class="tit">
                            <a href="https://bbs.nga.cn/read.php?tid=17354082" title="2019NEST全国电竞大赛《英雄联盟》夏季总决赛开幕">2019NEST全国电竞大赛《英雄联盟》夏季总决赛开幕</a>
                        </h2>
                        <p class="dig">5月24日，2019NEST全国电子竞技大赛《英雄联盟》夏季总决赛在贵阳市贵州体育馆开幕……</p>
                        <div class="oth">
                            <span class="f">英雄联盟</span>
                            <span class="a">十万萝莉 </span>
                            <span class="d">2019.05.24</span>
                        </div>
                    </div>
                </li>
                <li class="clearfix li">
                    <div class="img"><a href="https://bbs.nga.cn/read.php?tid=17351429" style="background-image:url(https://img.nga.178.com/attachments/mon_201905/24/-421abQ5-bct5ZfT3cSdw-5b.jpg)"><div class="imghide"><div class="posi"><strong class="cn">游戏产业</strong><span class="en">read more</span></div></div></a></div>
                    <div class="txt">
                        <h2 class="tit">
                            <a href="https://bbs.nga.cn/read.php?tid=17351429" title="蓝洞开发RTS《燃烧王座》中文版本曝光">蓝洞开发RTS《燃烧王座》中文版本曝光</a>
                        </h2>
                        <p class="dig">由《绝地求生》开发商蓝洞旗下Delusion工作室推出的即时战略手游CastleBurn，近日公布了全新中文版本《燃烧王座》。</p>
                        <div class="oth">
                            <span class="f">游戏产业</span>
                            <span class="a">satatear</span>
                            <span class="d">2019.05.24</span>
                        </div>
                    </div>
                </li>
                <li class="clearfix li">
                    <div class="img"><a href="https://bbs.nga.cn/read.php?tid=17346922" style="background-image:url(https://img.nga.178.com/attachments/mon_201905/24/-421abQ5-4053ZcT1kSdw-5b.jpg)"><div class="imghide"><div class="posi"><strong class="cn">炉石传说</strong><span class="en">read more</span></div></div></a></div>
                    <div class="txt">
                        <h2 class="tit">
                            <a href="https://bbs.nga.cn/read.php?tid=17346922" title="“层层攻陷达拉然” 冒险关卡解锁截图活动">“层层攻陷达拉然” 冒险关卡解锁截图活动</a>
                        </h2>
                        <p class="dig">${sessionScope.gamedto}通过在活动贴内分享冒险模式内第三层(拥挤的街道)带有“情节”卡牌的游戏内截图参与抽奖。</p>
                        <div class="oth">
                            <span class="f">炉石传说</span>
                            <span class="a">Adder59</span>
                            <span class="d">2019.05.24</span>
                        </div>
                    </div>
                </li>
            </ul>
        </div>
        <div class="block04"><!--专栏-->
            <div class="block04-l">
                <div class="scrollA" >
                    <div class="scrollB">
                        <div class="scrollC">
                            <c:forEach var="item" items="${sessionScope.gamedto}">
                                <div class="scrollD">
                                    <a class="pic" href="https://bbs.nga.cn/read.php?tid=17249206" title="老电影评分第二十二期">
                                        <img class="img" src="${pageContext.request.contextPath}/${item.list[0].gurl}" alt="${item.list[0].gcontext}">
                                        <img class="mark" src="${pageContext.request.contextPath}/${item.list[0].gurl}">
                                    </a>
                                    <div class="txt">
                                        <a href="#" title="" target="_blank"><h2 class="tit">${item.list[0].gname}</h2></a>
                                    </div>
                                </div>
                            </c:forEach>


                        </div>
                    </div>
                    <div class="scrollF"></div>
                    <div class="scrollE"></div>
                </div>
            </div>
            <div class="block04-r">
                <div class="img">
                    <div class="back">
                        <img class="" src="//cimg.178.com/nga/s/v5/app_back.png">
                        <a href="https://www.toutiao.com/c/user/6063361128/#mid=6063361128" target="_blank" class="tt"></a>
                        <a href="https://weibo.com/nga178com" target="_blank" class="wb"></a>
                    </div>
                    <div class="front">
                        <img class="" src="//cimg.178.com/nga/s/v5/app.png">
                        <a href="https://www.toutiao.com/c/user/6063361128/#mid=6063361128" target="_blank" class="tt"></a>
                        <a href="https://weibo.com/nga178com" target="_blank" class="wb"></a>
                    </div>
                </div>
            </div>

        </div>
        <div class="block05 clearfix"><!--第二部分内容-->
            <ul class="topics" id="loadEven">
                <c:forEach var="item" items="${sessionScope.gamedto}">
                    <li class="clearfix li">
                        <div class="img"><a href="/luntan/${item.list[0].gurl}" style="background-image:url(/luntan/${item.list[0].gurl})"><div class="imghide"><div class="posi"><strong class="cn">${item.list[0].gname}</strong><span class="en">read more</span></div></div></a></div>
                        <div class="txt">
                            <h2 class="tit">
                                <a href="#" title=""></a>
                            </h2>
                            <p class="dig">${item.list[0].gcontext}</p>
                            <div class="oth">
                                <span class="f">${item.list[0].gname}</span>
                                <span class="a">xxx</span>
                                <span class="d">xxx</span>
                            </div>
                        </div>
                    </li>
                </c:forEach>

            </ul>
        </div>
        <div class="more addMore" style="display:none">更多内容加载中&nbsp.&nbsp.&nbsp.</div>
        <div class="more clickAddMore" style="display:none">点击加载更多内容&nbsp<span class=dot0>.</span>&nbsp<span class=dot1>.</span>&nbsp<span class=dot2>.</span></div>

    </div>
    <div class="boxR">
        <div class="block06"><!--热帖-->
            <div class="tit">
                <h2>热帖</h2>

            </div>
            <div class="select"></div>
            <ul class="hot" id="hot">
            </ul>
        </div>
        <div class="block07"><!--活动赛事-->
            <div class="tit">
                <ul id="eventsTag">
                    <li class="cur" data-event="a">论坛热帖</li>
                    <li data-event="b">最新热帖</li>
                </ul>
                <div class="line"></div>
            </div>
            <div class="events" id="events">
                <ul class="a">
                    <li>
                        <img src="https://img.nga.178.com/attachments/mon_201905/22/-p219Q5-a6olK3S1o-1o.jpg">
                        <div class="info">
                            <a href="https://bbs.nga.cn/read.php?tid=17318254" class="txt" target="_blank"><strong>NGA众测第三期</strong>蚂蚁电竞ANT272F显示器</a>
                            <p class="tag"><span>显示器，键盘，鼠标</span></p>
                            <span class="t">05.21—05.29</span>
                        </div>
                    </li>
                    <li>
                        <img src="https://img.nga.178.com/attachments/mon_201905/10/-p219Q5-wfjK3S1o-1o.jpg">
                        <div class="info">
                            <a href="https://ngabbs.com/read.php?tid=17165700" class="txt" target="_blank"><strong>吴刚携新片《破冰行动》</strong>为NGA水友送上祝福</a>
                            <p class="tag"><span>爱奇艺季卡</span></p>
                            <span class="t">05.07—05.13</span>
                        </div>
                    </li>
                    <li>
                        <img src="https://img.nga.178.com/attachments/mon_201905/10/-p219Q5-k7ogK2S1o-1o.jpg">
                        <div class="info">
                            <a href="https://ngabbs.com/read.php?tid=17151839" class="txt" target="_blank"><strong>NGA携手JEET蓝牙耳机</strong>盖楼抽奖赢数码好礼</a>
                            <p class="tag"><span>蓝牙耳机</span></p>
                            <span class="t">05.05—05.18</span>
                        </div>
                    </li>
                    <li>
                        <img src="https://img.nga.178.com/attachments/mon_201905/10/-p219Q5-ccfyK3S1o-1o.jpg">
                        <div class="info">
                            <a href="https://bbs.nga.cn/read.php?tid=17154764" class="txt" target="_blank"><strong>参与漫威英雄格斗</strong>赢超级争霸战周边</a>
                            <p class="tag"><span>鼠标，复联4周边</span></p>
                            <span class="t">05.06—05.15</span>
                        </div>
                    </li>
                    <li>
                        <img src="https://img.nga.178.com/attachments/mon_201905/10/-p219Q5-jtd4K3S1o-1o.jpg">
                        <div class="info">
                            <a href="https://ngabbs.com/read.php?tid=17183535" class="txt" target="_blank"><strong>一起来捉妖</strong>攻略征集活动</a>
                            <p class="tag"><span>Q币</span></p>
                            <span class="t">05.09—05.26</span>
                        </div>
                    </li>
                    <li>
                        <img src="https://img.nga.178.com/attachments/mon_201905/10/-p219Q5-221iK4T8S1o-1o.jpg">
                        <div class="info">
                            <a href="https://bbs.nga.cn/read.php?tid=17194150" class="txt" target="_blank"><strong>《洪潮之焰》官中上线</strong>赢取游戏和NS主机</a>
                            <p class="tag"><span>NS主机，洪潮之焰游戏</span></p>
                            <span class="t">05.10-05.17</span>
                        </div>
                    </li>

                </ul>
                <ul class="b" style="display:none" id="matches">
                </ul>
            </div>
        </div>
    </div>

</div>
<div class="block09"><!--底部-->
    <div class="content">
        <div class="totop"></div>
        <h2>友情链接</h2>
        <ul class="friendLink clearfix">
            <li>
                <a href="http://bbs.nga.cn/" target="_blank">NGA社区</a>
            </li>
            <li>
                <a href="http://app.178.com/" target="_blank">NGA客户端</a>
            </li>
            <li>
                <a href="http://www.178.com/" target="_blank">178游戏网</a>
            </li>
            <li>
                <a href="http://www.nga.cn/lolrating/" target="_blank">LOL一周韩服胜率</a>
            </li>
            <li>
                <a href="http://www.tgbus.com/" target="_blank">电玩巴士</a>
            </li>
            <li>
                <a href="http://www.titanar.com/" target="_blank">神之梯炉石线上赛</a>
            </li>
            <li>
                <a href="http://bbs.a9vg.com/forum.php" target="_blank">A9VG</a>
            </li>
            <li>
                <a href="http://www.g.com.cn" target="_blank">引力资讯</a>
            </li>
            <li>
                <a href="http://cc.163.com/" target="_blank">网易cc</a>
            </li>
            <li>
                <a href="http://www.vpgame.com" target="_blank">VPGAME DOTA2</a>
            </li>
            <li>
                <a href="https://www.varena.com" target="_blank">VARENA电竞</a>
            </li>
        </ul>

    </div>
</div>

<script src='http://w.cnzz.com/c.php?id=30039253' type='text/javascript'></script>
<script src='http://w.cnzz.com/c.php?id=1254438192' type='text/javascript'></script>
</body>
</html>
