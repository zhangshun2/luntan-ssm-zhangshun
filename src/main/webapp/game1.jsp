<%@page contentType="text/html; utf-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html >
<head>
    <title>Bootstrap 模板</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 Shiv 和 Respond.js 用于让 IE8 支持 HTML5元素和媒体查询 -->
    <!-- 注意： 如果通过 file://  引入 Respond.js 文件，则该文件无法起效果 -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body id="mydiv">


<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">

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
                                <c:when test="${sessionScope.user.username!=null}"><a>online</a>
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
                    <form class="navbar-form navbar-right" role="search" action="${pageContext.request.contextPath}/card/search" method="get">
                        <div class="form-group">
                            <input type="text" name="word" class="form-control" />
                        </div> <button type="submit" class="btn btn-default">搜索</button>
                    </form>

                </div>

            </nav>


            <%--輪播圖--%>
            <div id="myCarousel" class="carousel slide">
                <!-- 轮播（Carousel）指标 -->
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                </ol>
                <!-- 轮播（Carousel）项目 -->
                <div class="carousel-inner">

                    <div class="item active">
                        <img src="${pageContext.request.contextPath}/${sessionScope.gamedto[0].list[0].gurl}" alt="First slide">
                        <div class="carousel-caption"><a style="color: yellow">${sessionScope.gamedto[0].list[0].gname}</a></div>
                    </div>
                    <div class="item">
                        <img src="${pageContext.request.contextPath}/${sessionScope.gamedto[0].list[1].gurl}" alt="Second slide">
                        <div class="carousel-caption"><a style="color: yellow">${sessionScope.gamedto[0].list[1].gname}</a></div>
                    </div>
                    <div class="item">
                        <img src="${pageContext.request.contextPath}/${sessionScope.gamedto[0].list[2].gurl}" alt="Third slide">
                        <div class="carousel-caption"><a style="color: yellow">${sessionScope.gamedto[0].list[2].gname}</a></div>
                    </div>

                </div>
                <!-- 轮播（Carousel）导航 -->
                <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>


            <br>
            <br>
            <br>
            <br>

            <div class="carousel slide" id="carousel-841926">
                <ol class="carousel-indicators">
                    <li data-slide-to="0" data-target="#carousel-841926">
                    </li>
                    <li data-slide-to="1" data-target="#carousel-841926">
                    </li>
                    <li data-slide-to="2" data-target="#carousel-841926" class="active">
                    </li>
                </ol>
            </div>

            <ul class="nav nav-pills">
                <li class="active">
                    <a href="#"> <span class="badge pull-right">${sessionScope.c1}</span> ${sessionScope.gamedto[0].name}</a>
                </li>
                <li>
                    <a href="#"> <span class="badge pull-right">${sessionScope.c2}</span> More</a>
                </li>
            </ul>
            <hr>
            <ul class="list-inline">
            <c:forEach var="game" items="${sessionScope.gamedto[0].list}">
                <li>
                    <a href="${pageContext.request.contextPath}/game/gamedto2?gameid=${game.gid}">${game.gname}</a>
                </li>&nbsp;丨&nbsp;

            </c:forEach>

            </ul>
            <hr>

            <%--<div class="row clearfix">--%>
                <%--<div class="col-md-12 column">--%>
                    <%--<h1>${sessionScope.gamedto[0].name}</h1>--%>
                <%--</div>--%>
            <%--</div>--%>
            <c:forEach var="game" items="${sessionScope.gamedto[0].list}">
                <div class="row clearfix">
                    <div class="col-md-12 column">
                        <h3>
                            <a href="${pageContext.request.contextPath}/game/gamedto2?gameid=${game.gid}"> ${game.gname}</a>

                        </h3>
                        <blockquote>
                            <p style="text-align: center">
                                ${game.gcontext}
                            </p> <small>${game.gbolog}<cite></cite></small>

                        </blockquote>
                        <p class="text-center text-info">
                            <em><a href="${pageContext.request.contextPath}/game/gamedto2?gameid=${game.gid}"> ${game.gname}</a></em> 是一个让人非常开心的游戏。
                        </p>
                    </div>
                </div>
                <hr>
            </c:forEach>


            <p class="text-center text-info">
                <em>真正的快乐是<a href="https://tieba.baidu.com/f?kw=%E8%87%AA%E5%BE%8B&ie=utf-8&tp=0">自律</a></em>，得我所得，方有闲暇时间，娱乐休憩，得一方净土，怡然自乐，偶得菜根，百嚼不厌。
            </p>
        </div>
    </div>
</div>


</body>

</html>