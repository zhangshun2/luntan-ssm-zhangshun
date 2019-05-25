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
</head>
<body id="mydiv">
<script src="https://code.jquery.com/jquery.js"></script>
<!-- 包括所有已编译的插件 -->
<script src="js/bootstrap.min.js"></script>
<!--背景插件-->
<!-- 背景div -->
<script type="text/javascript">
    window.onload = function() {
        //配置
        var config = {
            vx: 4,	//小球x轴速度,正为右，负为左
            vy: 4,	//小球y轴速度
            height: 2,	//小球高宽，其实为正方形，所以不宜太大
            width: 2,
            count: 200,		//点个数
            color: "12, 162, 185", 	//点颜色
            stroke: "13,255,255", 		//线条颜色
            dist: 6000, 	//点吸附距离
            e_dist: 20000, 	//鼠标吸附加速距离
            max_conn: 10 	//点到点最大连接数
        }

        //调用
        CanvasParticle(config);
    }
</script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/canvas-particle.js"></script>
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
                            <a href="#">首页</a>
                        </li>
                        <li>
                            <a href="#">流行帖子</a>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">More<strong class="caret"></strong></a>
                            <ul class="dropdown-menu">
                                <li>
                                    <a href="#">个人信息</a>
                                </li>
                                <li>
                                    <a href="#">点赞帖子</a>
                                </li>
                                <li>
                                    <a href="#">评论帖子</a>
                                </li>
                                <li class="divider">
                                </li>
                                <li>
                                    <a href="#">个人帖子</a>
                                </li>
                                <li class="divider">
                                </li>
                                <li>
                                    <a href="#">更多</a>
                                </li>
                            </ul>
                        </li>



                        <li class="active right">
                            <a href="#">
                                ${sessionScope.user.username}
                            <c:choose>
                                <c:when test="${sessionScope.user.username}!=null">${sessionScope.user.username}</c:when>
                                <c:when test="${sessionScope.user.username}==null">登录</c:when>
                            </c:choose>
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

            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>

            <div class="panel-group" id="panel-718983">
                <div class="panel panel-success">
                    <div class="panel-heading">
                        <a class="panel-title" data-toggle="collapse" data-parent="#panel-718983" href="#panel-element-666415"><span style="flood-color: coral;font-size: 30px">COME ON AND FIND HAPPINESS</span></a>
                    </div>
                    <div id="panel-element-666415" class="panel-collapse in">
                        <div class="panel-body">
                            Anim pariatur cliche...
                        </div>
                    </div>
                </div>
                <c:forEach var="gamedto" items="${sessionScope.gamedto}">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <a class="panel-title" data-toggle="collapse" data-parent="#panel-718983" href="#panel-element-546265">${gamedto.name}</a>
                        </div>
                        <div id="panel-element-546265" class="panel-collapse">
                            <div class="panel-body">
                                <c:forEach var="game" items="${gamedto.list}">
                                    <li class="list-group-item">
                                        <span style="font-size: 18px;font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;font-weight: bold">
                                            <br>${game.gname}</span> ---  ${game.gcontext}

                                        </li>

                                </c:forEach>
                                <hr>
                                <span style="float: right"> >>进入分区 </span>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
    </div>
</div>
</body>