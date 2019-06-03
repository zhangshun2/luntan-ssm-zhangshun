<%@page contentType="text/html; utf-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html >
<head>
    <style type="text/css">
        hr{
            size: 4px;
            color: #1b1b1b;
        }
    </style>
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
<nav class="navbar navbar-default navbar-fixed-top navbar-inverse" role="navigation">
    <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button> <a class="navbar-brand" href="#">Game Trfibune</a>
    </div>

    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
        <ul class="nav navbar-nav">
            <li class="active">
                <a target="_self" href="${pageContext.request.contextPath}/index.jsp">主页</a>
            </li>
            <li class="active">
                <a target="_self" href="${pageContext.request.contextPath}/game/showgameindex">首页</a>
            </li>





            <li class="active right">
                <a href="#">

                    <c:choose>
                        <c:when test="${sessionScope.user.username!=null}">${sessionScope.user.username}</c:when>
                        <c:when test="${sessionScope.user.username==null}"><a href="${pageContext.request.contextPath}/login2.jsp">登录</a> </c:when>
                    </c:choose>
                </a>
            </li>
            <li class="active right">
                <a href="#">
                    <c:choose>
                        <c:when test="${sessionScope.user.username!=null}"><span style="color: greenyellow">online</span>
                        </c:when>
                        <c:when test="${sessionScope.user.username==null}"><span style="font-size: 11px"><a href="${pageContext.request.contextPath}/login2.jsp">请前往登录页面</a> </span> </c:when>
                    </c:choose>

                </a>
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
                <a href="${pageContext.request.contextPath}/card/toadd">
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

<br>
<br>
<br>



<h1>${sessionScope.gamedto2.gname}</h1>
<div class="container-fluid">
    <div class="row-fluid">
        <div class="span12">
            <div class="tabbable" id="tabs-480045">
                <ul class="nav nav-tabs">
                    <li class="active">
                        <a href="#panel-1" data-toggle="tab">热门帖子</a>
                    </li>
                    <li>
                        <a href="#panel-2" data-toggle="tab">收藏帖子</a>
                    </li>
                    <li>
                        <a href="#panel-3" data-toggle="tab">最新帖子</a>
                    </li>
                    <li>
                        <a href="#panel-4" data-toggle="tab">更多</a>
                    </li>

                </ul>
                <div class="tab-content">
                    <div class="tab-pane active" id="panel-1">
                        <p>
                            <%--第一部分内容.--%>

                        </p>
                        <c:if test="${sessionScope.gamedto2.mylist==null}">暂无数据</c:if>
                        <c:forEach var="g1" items="${sessionScope.gamedto2.listhot}">
                        <div class="row-fluid">
                            <div class="span12">
                                <h2 style="color: #1b1b1b;font-style: initial">
                                    <a href="${pageContext.request.contextPath}/card/showone?id=${g1.tid}">${g1.title}</a>
                                </h2>
                                <a style="float: right" onclick="dianzan()"> 丨点赞(<span id="dianzanCount">${g1.thumpsuptimes}</span>
                                    <span id="dianzanCount1" hidden="hidden">${g1.tid}</span>
                                    )</a><a style="float: right" onclick="shoucang()">收藏(<span id="shoucangCount">${g1.collecttimes}</span>
                                )</a>
                                <span style="float: right">
                                     <a href="${pageContext.request.contextPath}/card/showone?id=${g1.tid}">>>详情 丨 </a>
                                    </span>
                                <hr style="color: yellow;size: 10px">

                            </div>
                        </div>
                        </c:forEach>
                        <%--dierbufen--%>
                        <c:forEach var="g1" items="${sessionScope.gamedto2.listall}">
                            </p>
                            <div class="row-fluid">
                                <div class="span12">
                                    <h2 style="color: #1b1b1b;font-style: initial">
                                        <a href="${pageContext.request.contextPath}/card/showone?id=${g1.tid}">${g1.title}</a>
                                    </h2>
                                    <hr style="color: yellow;size: 10px">

                                </div>
                            </div>
                        </c:forEach>

                    </div>
                    <div class="tab-pane" id="panel-2">
                        <c:if test="${sessionScope.gamedto2.mylist==null}">热门收藏帖子暂无数据</c:if>
                        <c:forEach var="g1" items="${sessionScope.gamedto2.listsave}">
                            <div class="row-fluid">
                                <div class="span12">
                                    <h2 style="color: #1b1b1b;font-style: initial">
                                        <a href="${pageContext.request.contextPath}/card/showone?id=${g1.tid}">${g1.title}</a>
                                    </h2>
                                    <a style="float: right" onclick="dianzan()"> 丨点赞(<span id="dianzanCount">${g1.thumpsuptimes}</span>
                                        <span id="dianzanCount1" hidden="hidden">${g1.tid}</span>
                                        )</a><a style="float: right" onclick="shoucang()">收藏(<span id="shoucangCount">${g1.collecttimes}</span>
                                    )</a>
                                    <span style="float: right">

                                     <a href="${pageContext.request.contextPath}/card/showone?id=${g1.tid}">>>详情 丨</a>
                                    </span>
                                    <hr style="color: yellow;size: 10px">

                                </div>
                            </div>
                        </c:forEach>
                        <%--dierbufen--%>
                        <c:forEach var="g1" items="${sessionScope.gamedto2.listall}">
                            </p>
                            <div class="row-fluid">
                                <div class="span12">
                                    <h2 style="color: #1b1b1b;font-style: initial">
                                        <a href="${pageContext.request.contextPath}/card/showone?id=${g1.tid}">${g1.title}</a>
                                    </h2>
                                    <hr style="color: yellow;size: 10px">

                                </div>
                            </div>
                        </c:forEach>
                    </div>
                    <div class="tab-pane " id="panel-3">
                        <c:if test="${sessionScope.gamedto2.listnew==null}">最新帖子暂无数据</c:if>
                        <c:forEach var="g1" items="${sessionScope.gamedto2.listnew}">
                            <div class="row-fluid">
                                <div class="span12">
                                    <h2 style="color: #1b1b1b;font-style: initial">
                                        <a href="${pageContext.request.contextPath}/card/showone?id=${g1.tid}">${g1.title}</a>
                                    </h2>
                                    <a style="float: right" onclick="dianzan()"> 丨点赞(<span id="dianzanCount">${g1.thumpsuptimes}</span>
                                        <span id="dianzanCount1" hidden="hidden">${g1.tid}</span>
                                        )</a><a style="float: right" onclick="shoucang()">收藏(<span id="shoucangCount">${g1.collecttimes}</span>
                                    )</a>
                                    <span style="float: right">

                                     <a href="${pageContext.request.contextPath}/card/showone?id=${g1.tid}">>>详情 丨</a>
                                    </span>
                                    <hr style="color: yellow;size: 10px">

                                </div>
                            </div>
                        </c:forEach>
                        <%--dierbufen--%>
                        <c:forEach var="g1" items="${sessionScope.gamedto2.listall}">
                            </p>
                            <div class="row-fluid">
                                <div class="span12">
                                    <h2 style="color: #1b1b1b;font-style: initial">
                                        <a href="${pageContext.request.contextPath}/card/showone?id=${g1.tid}">${g1.title}</a>
                                    </h2>
                                    <hr style="color: yellow;size: 10px">

                                </div>
                            </div>
                        </c:forEach>
                    </div>
                    <div class="tab-pane " id="panel-4">
                        我的帖子
                        <hr>
                        <c:if test="${sessionScope.gamedto2.mylist==null}">暂无数据</c:if>
                        <c:forEach var="g1" items="${sessionScope.gamedto2.mylist}">
                            <div class="row-fluid">
                                <div class="span12">
                                    <h2 style="color: #1b1b1b;font-style: initial">
                                        <a href="${pageContext.request.contextPath}/card/showone?id=${g1.tid}">${g1.title}</a>
                                    </h2>
                                    <a style="float: right" onclick="dianzan()"> 丨点赞(<span id="dianzanCount">${g1.thumpsuptimes}</span>
                                        <span id="dianzanCount1" hidden="hidden">${g1.tid}</span>
                                        )</a>
                                    <a style="float: right" onclick="shoucang()">收藏(<span id="shoucangCount">${g1.collecttimes}</span>
                                    )</a>


                                     <a style="float: right" href="${pageContext.request.contextPath}/card/showone?id=${g1.tid}">>>详情 丨</a>
                                    <hr style="color: yellow;size: 10px">

                                </div>
                            </div>
                        </c:forEach>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    var dianzan=function(){
        //先页面效果
        var dianzanCount=$("#dianzanCount").html();
        $("#dianzanCount").html(++dianzanCount);
        //再发送异步请求修改数据
        $.ajax({
            url: "${pageContext.request.contextPath}/card/dianzan",
            type: "post",
            dataType: "json",
            data: "id="+$("#dianzanCount1").html(),
            success: function(json){
                if(json.status==200){
                    alert(json.result);
                }else{
                    //如果后端代码有问题,页面-1
                    alert(json.result);
                    $("#dianzanCount").html(dianzanCount--);
                }
            }
        })
    }
    var shoucang=function(){
        //判断用户登录
        var userID=$("#userID").val();
        if (!(userID == null || userID == "")) {
            var shoucangCount = $("#shoucangCount").html();
            $("#shoucangCount").html(++shoucangCount);
            $.ajax({
                url: "${pageContext.request.contextPath}/card/shoucang",
                type: "post",
                dataType: "json",
                data: "tid="+$("#dianzanCount1").html()+"&uid="+userID,
                success: function (json) {
                    if (json.status == 200) {
                        alert(json.result);
                    } else {
                        alert(json.result);
                        $("#dianzanCount").html(dianzanCount--);
                    }
                }
            })
        } else {
            location.href = "${pageContext.request.contextPath}/login2.jsp?tid="+${sessionScope.onecard.tid};
        }
    }
</script>
</body>
</html>