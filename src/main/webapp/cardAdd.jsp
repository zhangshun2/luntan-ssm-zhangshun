<%@page contentType="text/html; utf-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <title>实验五</title>
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="keywords" content="HTML,CSS,XML,JavaScript">
    <meta charset="utf-8" />
    <style type="text/css">
        body{
            font:14px/28px "微软雅黑";
        }
        .contact *:focus{outline :none;}
        .contact{
            width: 700px;
            height: auto;
            background: #f6f6f6;
            margin: 40px auto;
            padding: 10px;
        }
        .contact ul {
            width: 650px;
            margin: 0 auto;
        }
        .contact ul li{
            border-bottom: 1px solid #dfdfdf;
            list-style: none;
            padding: 12px;
        }
        .contact ul li label {
            width: 120px;
            display: inline-block;
            float: left;
        }
        .contact ul li input[type=text],.contact ul li input[type=password]{
            width: 220px;
            height: 25px;
            border :1px solid #aaa;
            padding: 3px 8px;
            border-radius: 5px;
        }
        .contact ul li input:focus{
            border-color: #c00;

        }
        .contact ul li input[type=text]{
            transition: padding .25s;
            -o-transition: padding  .25s;
            -moz-transition: padding  .25s;
            -webkit-transition: padding  .25s;
        }
        .contact ul li input[type=password]{
            transition: padding  .25s;
            -o-transition: padding  .25s;
            -moz-transition: padding  .25s;
            -webkit-transition: padding  .25s;
        }
        .contact ul li input:focus{
            padding-right: 70px;
        }
        .btn{
            position: relative;
            left: 300px;
        }
        .tips{
            color: rgba(0, 0, 0, 0.5);
            padding-left: 10px;
        }
        .tips_true,.tips_false{
            padding-left: 10px;
        }
        .tips_true{
            color: green;
        }
        .tips_false{
            color: red;
        }
    </style>
    <script type="text/javascript">
        function checkna(){
            na=form1.yourname.value;
            if( na.length <1 || na.length >30)
            {
                divname.innerHTML='<font class="tips_false">长度是1~30个字符</font>';

            }else{
                divname.innerHTML='<font class="tips_true">√</font>';

            }

        }
    </script>
</head>
<body>
<div class="contact" >
    <%--${pageContext.request.contextPath}/card/cardadd--%>
    <%--同步异步处理都行--%>
        <%--提交不管成功不成功之后跳到审批中页面 adminsee.jsp --%>
    <form name="" method="get">
        <ul>
            <li>
                <label>标题：</label>
                <input type="text" name="yourname" placeholder="请输入标题"  onblur="checkna()" required/><span class="tips" id="divname">长度1~12个字符</span>
            </li>

            <li>
                <label>电子邮箱：</label>
               <%-- //遍历出所有的游戏
                //接口/game/gameselect 无参数--%>
                <select  style="width: 250px;height: 40px">
                    <option>default</option>

                </select >
            </li>
            <li>
                <label>内容:</label>
                <textarea style="height: 700px;width: 600px"></textarea>
            </li>
        </ul>
        <b class="btn"><input type="submit" value="提交"/>
            <input type="reset" value="取消"/></b>
    </form>
</div>
</body>
</html>

