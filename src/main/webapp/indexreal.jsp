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





<nav class="navbar navbar-default navbar-fixed-top navbar-inverse" role="navigation">
    <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button> <a class="navbar-brand" href="#">Game Trfibune</a>
    </div>

    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
        <ul class="nav navbar-nav">
            <li class="active">
                <a target="_self" href="index.jsp">主页</a>
            </li>
            <li class="active">
                <a target="_self" href="${pageContext.request.contextPath}/game/showgameindex" target="_self">首页</a>
            </li>





            <li class="active right">


                    <c:choose>
                        <c:when test="${sessionScope.user.username!=null}">${sessionScope.user.username}</c:when>
                        <c:when test="${sessionScope.user.username==null}"><a href="${pageContext.request.contextPath}/login2.jsp">登录</a></c:when>
                    </c:choose>

            </li>
            <li class="active right">

                    <c:choose>
                        <c:when test="${sessionScope.user.username!=null}"><span style="color: greenyellow">online</span>
                        </c:when>
                        <c:when test="${sessionScope.user.username==null}"><a href="${pageContext.request.contextPath}/login2.jsp"><span style="font-size: 11px">请前往登录页面 </span></a> </c:when>
                    </c:choose>


            </li>
            <li class="active right">
                <a href="${pageContext.request.contextPath}/user/signout">
                    <c:choose>
                        <c:when test="${sessionScope.user.username!=null}"><span style="color: greenyellow">注销</span>
                        </c:when>
                        <c:when test="${sessionScope.user.username==null}"><span style="font-size: 11px"></span> </c:when>
                    </c:choose>

                </a>
            </li>
            <li class=" navbar-right">
                <a  href="${pageContext.request.contextPath}/card/toadd">
                            <span style="size: 40px">
                                + 帖子
                            </span>
                </a>
            </li>
        </ul>
        <form class="navbar-form navbar-right" role="search">
            <div class="form-group">
                <input type="text" class="form-control" />
            </div> <button type="submit" class="btn btn-default">Submit</button>
        </form>

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
                            <img src="${pageContext.request.contextPath}/${game.gurl}"${game.gcontext}">
                        </a>
                        <div class="txt">
                            <a href="" title="" target="_blank"><h2 class="tit">${game.gname} : ${game.gcontext}</h2></a>
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
                <li data-tagName="热帖"><a href="${pageContext.request.contextPath}/game/showgame?ttype=" target="_self">全部</a></li>
                <li data-tagName="什么值得玩"><a href="${pageContext.request.contextPath}/game/showgame?ttype=1" target="_self">手机游戏</a></li>
                <li data-tagName="魔兽世界"><a href="${pageContext.request.contextPath}/game/showgame?ttype=2">电脑游戏</a></li>
                <li data-tagName="NGA档案馆"><a href="${pageContext.request.contextPath}/game/showgame?ttype=3" target="_self">掌机游戏</a></li>
                <li data-tagName="炉石传说"><a href="${pageContext.request.contextPath}/game/showgame?ttype=4" target="_self">手机游戏</a></li>

            </ul>
        </div>


        <div class="block03"><!--第一部分内容-->
            <ul class="topics">
                <h3>用户热门浏览 >> </h3>
                <c:forEach var="hot" items="${sessionScope.listhot}" >
                    <li class="clearfix li">
                        <div class="img"><a href="/luntan/game/gamedto2?gameid=${hot.gameid}" style="background-image:url(${pageContext.request.contextPath}/${hot.hidden})"><div class="imghide"><div class="posi"><strong class="cn">${hot.gamename}</strong><span class="en">read more</span></div></div></a></div>
                        <div class="txt">
                            <h2 class="tit">
                                <a href="/luntan/card/showone?id=${hot.tid}" title="${hot.gamename}">${hot.gamename}1</a>
                            </h2>
                            <p class="dig"><a href="${pageContext.request.contextPath}/card/showone?id=${hot.tid}">${hot.title}</a></p>
                            <div class="oth">
                                <span class="f">${hot.gamename}</span>
                                <span class="a"></span>
                                <span class="d">2019.05.24</span>
                            </div>
                        </div>
                    </li>
                </c:forEach>
                <hr>

                <c:forEach var="hot" items="${sessionScope.listnew}" >
                    <li class="clearfix li">
                        <div class="img"><a href="/luntan/game/gamedto2?gameid=${hot.gameid}" style="background-image:url(${pageContext.request.contextPath}/${hot.hidden})"><div class="imghide"><div class="posi"><strong class="cn">${hot.gamename}</strong><span class="en">read more</span></div></div></a></div>
                        <div class="txt">
                            <h2 class="tit">
                                <a href="/luntan/card/showone?id=${hot.tid}" title="${hot.gamename}">${hot.gamename}1</a>
                            </h2>
                            <p class="dig"><a href="${pageContext.request.contextPath}/card/showone?id=${hot.tid}">${hot.title}</a></p>
                            <div class="oth">
                                <span class="f">${hot.gamename}</span>
                                <span class="a"></span>
                                <span class="d">2019.05.24</span>
                            </div>
                        </div>
                    </li>
                </c:forEach>

            </ul>
        </div>
        <h3>游戏推荐>></h3>
        <div class="block04"><!--专栏-->
            <div class="block04-l">
                <div class="scrollA" >
                    <div class="scrollB">
                        <div class="scrollC">
                            <c:forEach var="item" items="${sessionScope.gamedto}">
                                <div class="scrollD">
                                    <a class="pic" href="#" title="老电影评分第二十二期">
                                        <img class="img" src="${pageContext.request.contextPath}/${item.list[0].gurl}" alt="${item.list[0].gcontext}">
                                        <img class="mark" src="${pageContext.request.contextPath}/${item.list[0].gurl}">
                                    </a>
                                    <div class="txt">
                                        <a href="${pageContext.request.contextPath}/game/gamedto2?gameid=${item.list[0].gid}" title="" target="_blank"><h2 class="tit">${item.list[0].gname}</h2></a>
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
                        <img class="" src="${pageContext.request.contextPath}/1luntanimage/d1.jpg">

                    </div>
                    <div class="front">
                        <img class="" src="${pageContext.request.contextPath}/1luntanimage/d2.jpg">

                    </div>
                </div>
            </div>

        </div>

        <div class="block05 clearfix"><!--第二部分内容-->
            <ul class="topics" id="loadEven">
                <c:forEach var="item" items="${sessionScope.gamedto}">
                    <li class="clearfix li">
                        <div class="img"><a href="${pageContext.request.contextPath}/game/gamedto2?gameid=${item.list[0].gid}" style="background-image:url('/luntan/${item.list[0].gurl}')"><div class="imghide"><div class="posi"><strong class="cn">${item.list[0].gname}</strong><span class="en">read more</span></div></div></a></div>
                        <div class="txt">
                            <h2 class="tit">
                                <a href="${pageContext.request.contextPath}/game/gamedto2?gameid=${item.list[0].gid}" title=""></a>
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
            <ul class="hot"  >


                <c:forEach var="h" varStatus="p" items="${sessionScope.listhot}">
                    <li>

                        <div class="events">

                            <a href="${pageContext.request.contextPath}/card/showone?id=${h.tid}"    class="txt" target="_blank"><strong>${h.gamename}</strong> &nbsp;&nbsp;丨&nbsp;&nbsp;${h.title}</a>

                            <hr>

                        </div>
                    </li>
                </c:forEach>
            </ul>
        </div>
        <div class="block07"><!--活动赛事-->
            <div class="tit">
                <ul id="eventsTag">
                    <li  data-event="a">论坛热帖</li>
                    <li data-event="b" class="cur">最新热帖</li>
                </ul>
                <div class="line"></div>
            </div>
            <div class="events" id="events">
                <ul class="a">

                    <c:forEach var="h" varStatus="p" items="${sessionScope.listhot}">
                        <li>

                            <div class="info">
                                <a href="${pageContext.request.contextPath}/card/showone?id=${h.tid}" class="txt" target="_blank"><strong>${h.gamename}</strong> &nbsp;&nbsp;丨&nbsp;&nbsp; ${h.title}</a>
                                <hr>
                            </div>
                        </li>
                    </c:forEach>

                </ul>
                <ul class="b"  id="">
                    <c:forEach var="h" varStatus="p" items="${sessionScope.listnew}">
                        <li>

                            <div class="info">
                                <a href="${pageContext.request.contextPath}/card/showone?id=${h.tid}" class="txt" target="_blank"><strong>${h.gamename}</strong> &nbsp;&nbsp;丨&nbsp;&nbsp;${h.title}</a>
                                <hr>
                            </div>
                        </li>
                    </c:forEach>
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

        </ul>

    </div>
</div>


</body>
</html>
