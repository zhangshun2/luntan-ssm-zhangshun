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
    <script src="${pageContext.request.contextPath}/js/jquery.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body id="mydiv">
<form class="navbar-form navbar-search" role="search" action="${pageContext.request.contextPath}/card/search" method="get">
    <div class="form-group">
        <input type="text" name="word" class="form-control" />
    </div> <button type="submit" class="btn btn-default">搜索</button>
    <button class="btn btn-success btn-small"><a href="${pageContext.request.contextPath}/game/showgameindex">回首页</a></button>
</form>

<hr>

</body>
</html>