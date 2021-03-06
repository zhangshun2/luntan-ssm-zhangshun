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
<input type="hidden" id="userID" value="${sessionScope.user.uid}" />
<div class="container-fluid">
    <div class="row-fluid">
        <div class="span12">
            <div class="page-header">
                <h1>
                    <small>${sessionScope.onecard.title}</small>
                </h1>
            </div>
            <dl>
                <dt>
                    内容:
                </dt>
                <dd>
                    ${sessionScope.onecard.content}

                </dd>
            </dl>
        </div>
    </div>
</div>

<div class="btn-group">
    <button type="button" class="btn btn-default">返回列表</button>
    <button type="button" class="btn btn-default" onclick="dianzan()">点赞&nbsp;(<span id="dianzanCount">${sessionScope.onecard.thumpsuptimes}</span>)</button>
    <div class="btn-group">
        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
            more
            <span class="caret"></span>
        </button>
        <ul class="dropdown-menu">
            <li><a href="javascript:void(0);" onclick="shoucang()">收藏(<span id="shoucangCount">${sessionScope.onecard.collecttimes}</span>)</a></li>
        </ul>
    </div>
    <button class="btn btn-default"  data-toggle="modal" data-target="#myModal">评论</button>
</div>
<hr>
<table class="table">
    <caption>相关评论：</caption>
    <thead>
    <tr>
    </tr>
    </thead>
    <tbody>

    <c:forEach var="c" items="${sessionScope.pinglunAll}" varStatus="s" >
        <tr>
            <c:if test="${c.dowhat!=''}">
                <td >${s.count}:${c.dowhat}</a></td>
            </c:if>
        </tr>
    </c:forEach>
    </tbody>
</table>
<!-- 模态框（Modal） -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title" id="myModalLabel">
                    评论
                </h4>
            </div>
            <form action="${pageContext.request.contextPath}/userdo/pinglun" method="post">
                <div class="modal-body">
                    <input hidden="hidden" name="cardId" value="${sessionScope.onecard.tid}">
                    <input name="context" style="text-decoration-color: yellow ;width: 100%; height: 300px"  ></input>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭
                    </button>
                    <input value="提交" type="submit" class="btn btn-primary" >
                </div>
            </form>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>
<script>
    //评论

    <%--var pinglunkuang=$("#pinglunkuang").val();--%>
    <%--var pinglun=function(){--%>
        <%--$.ajax({--%>
            <%--url: "${pageContext.request.contextPath}/userdo/pinglun",--%>
            <%--type: "post",--%>
            <%--dataType: "json",--%>
            <%--data: "cardId="+${sessionScope.onecard.tid}+"&context="+pinglunkuang,--%>
            <%--success: function(json){--%>
                <%--var str = "";--%>
                <%--if(json!=null){--%>
                    <%--console.log(json);--%>
                    <%--for (var i = 0; i++; i < json.length) {--%>
                        <%--str+= "<hr>"+json[i].dowhat;--%>
                    <%--}--%>
                    <%--$("#pinglunjiazai").append(str);--%>
                <%--}--%>
            <%--}--%>
        <%--})--%>
    <%--}--%>

    var dianzan=function(){
        //先页面效果
        var dianzanCount=$("#dianzanCount").html();
        $("#dianzanCount").html(++dianzanCount);
        //再发送异步请求修改数据
        $.ajax({
            url: "${pageContext.request.contextPath}/card/dianzan",
            type: "post",
            dataType: "json",
            data: "id="+${sessionScope.onecard.tid},
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
                data: "tid="+${sessionScope.onecard.tid}+"&uid="+userID,
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