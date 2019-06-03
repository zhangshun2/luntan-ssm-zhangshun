<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"
	contentType="text/html; charset=UTF-8"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<title>Document</title>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.js"></script>
<script>
	//表格操作的所有事件函数
	var userTable = {
		"addUser":function(){
			//完成添加一行数据功能:
			//alert("事件绑定成功。");
			//1. 获得name和age的的value的值
			var name = $("#user_name").val();
			var age = $("#user_age").val();
			//2. 拼接成一个tr，
			var tr = $('<tr><td><input type="checkbox" name="ids"></td><td>'+name+'</td><td>'+age+'</td><td><a href="#">删除</a></td></tr>');
			//3. 绑定在tbody
			$("#tb").append(tr);
		},
		"checkAll":function(){
			//1. 选择  #tb 内部所有的复选框，修改他们的checked的属性值  true
			$("#tb input[type=checkbox]").prop("checked",true);
		},
		"removeUser":function(){
			//alert("hehe");
			//删除点击超链接的所在的当前行tr
			// $(this)//a超链接
			//获得a标签的父亲的父亲
			$(this).parent().parent().remove();
		}
		
	};
		
		
	$(function(){
		//1. 给添加按钮绑定单击事件
		$("#addBtn").on("click",userTable.addUser);
		//2. 给全选按钮绑定事件
		$("#cka").on("click",userTable.checkAll);
		
		//3. 给#tb 内部所有的a标签 内容 删除，绑定单击事件
		$("#tb a:contains(删除)").live("click",userTable.removeUser);
		
	});	
</script>
</head>
<body>
	<form id="fm" action="#" style="text-align: center;">
		<input type="text" name="name" id="user_name"/>
		<input type="text" name="age" id="user_age">
		<input id="addBtn" type="button" value="添加">
	</form>
	<hr>
	<table align="center" border="1" width="60%">
		<thead>
			<tr>
				<th>
					<input id="cka" type="button" value="全选">
				</th>
				<th>
					姓名
				</th>
				<th>
					年龄
				</th>
				<th>
					操作
				</th>
			</tr>
		</thead>
		<tbody id="tb">
			<tr>
				<td width="20px"><input type="checkbox" name="ids"></td>
				<td>讲文明</td>
				<td>19</td>
				<td>
					<a href="#">删除</a>
				</td>
			</tr>
			<tr id="tr2">
				<td><input type="checkbox" name="ids"></td>
				<td>杨宁</td>
				<td>20</td>
				<td><a href="#">删除</a></td>
			</tr>
			<tr>
				<td><input type="checkbox" name="ids"></td>
				<td>洪世鹏</td>
				<td>20</td>
				<td><a href="#">删除</a></td>
			</tr>
		</tbody>
	</table>
	<input type="button" value="全不选" >
	<input type="button" value="反选" >
	<input type="button" value="删除选中" >
	
</body>
</html>
