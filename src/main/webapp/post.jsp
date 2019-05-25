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
<div class="container-fluid">
    <div class="row-fluid">
        <div class="span12">
            <div class="page-header">
                <h1>
                    页标题范例 <small>此处编写页标题</small>
                </h1>
            </div>
            <dl>
                <dt>
                    Rolex
                </dt>
                <dd>
                    劳力士创始人为汉斯.威尔斯多夫，1908年他在瑞士将劳力士注册为商标。
                </dd>
                <dt>
                    Vacheron Constantin
                </dt>
                <dd>
                    始创于1775年的江诗丹顿已有250年历史，
                </dd>
                <dd>
                    是世界上历史最悠久、延续时间最长的名表之一。
                </dd>
                <dt>
                    IWC
                </dt>
                <dd>
                    创立于1868年的万国表有“机械表专家”之称。
                </dd>
                <dt>
                    Cartier
                </dt>
                <dd>
                    卡地亚拥有150多年历史，是法国珠宝金银首饰的制造名家。
                </dd>
            </dl>
            <p>
                <em>Git</em>是一个分布式的版本控制系统，最初由<strong>Linus Torvalds</strong>编写，用作Linux内核代码的管理。在推出后，Git在其它项目中也取得了很大成功，尤其是在Ruby社区中。
            </p>
        </div>
    </div>
</div>

<div class="btn-group">
    <button type="button" class="btn btn-default">返回列表</button>
    <button type="button" class="btn btn-default">点赞&nbsp;(12)</button>
    <div class="btn-group">
        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
            more
            <span class="caret"></span>
        </button>
        <ul class="dropdown-menu">
            <li><a href="#">收藏()</a></li>
            <li><a href="#">举报</a></li>
        </ul>
    </div>
</div>
</body>
</html>