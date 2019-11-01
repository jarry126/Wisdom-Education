<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>


	<script type="text/javascript" src="/Wisdom-Education/js/jquery-3.3.1.js"></script>
	 <script src="/Wisdom-Education/js/bootstrap.min.js"></script>
	
    <!-- 网页图标 -->
    <link rel="shortcut icon" href="http://192.168.1.106:8082/owep-admin-web-page/images/logo.png">
    <link rel="icon" sizes="16x16 32x32 64x64" href="http://192.168.1.106:8082/owep-admin-web-page/images/logo.png">
    <link rel="apple-touch-icon-precomposed" href="http://192.168.1.106:8082/owep-admin-web-page/images/logo.png">


    <!-- 网页图标 -->
    <link rel="shortcut icon" href="http://192.168.1.106:8082/owep-admin-web-page/dist/img/logo.png">
    <link rel="icon" sizes="16x16 32x32 64x64" href="http://192.168.1.106:8082/owep-admin-web-page/dist/img/logo.png">
    <link rel="apple-touch-icon-precomposed" href="http://192.168.1.106:8082/owep-admin-web-page/dist/img/logo.png">


	<!-- Tell the browser to be responsive to screen width -->
	<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
	<!-- Bootstrap 3.3.6 -->
	<link rel="stylesheet" href="/Wisdom-Education/css&&js/bootstrap.min.css">
	
	<link rel="stylesheet" href="/Wisdom-Education/css&&js/dataTables.bootstrap.css">
	
	<link rel="stylesheet" href="/Wisdom-Education/css&&js/font-awesome.min.css">
	
	<link rel="stylesheet" href="/Wisdom-Education/css&&js/common.css">
	<!-- Font Awesome -->
	<link rel="stylesheet" href="/Wisdom-Education/css&&js/font-awesome.min.css">
	<!-- Ionicons -->
	<link rel="stylesheet" href="/Wisdom-Education/css&&js/ionicons.min.css">
	<!-- jvectormap -->
	<link rel="stylesheet" href="/Wisdom-Education/css&&js/jquery-jvectormap-1.2.2.css">
	<!-- Theme style -->
	<link rel="stylesheet" href="/Wisdom-Education/css&&js/AdminLTE.css">
	<link rel="stylesheet" href="/Wisdom-Education/css&&js/_all-skins.css">
	<!-- 选择搜索 -->
	<link rel="stylesheet" type="text/css" href="/Wisdom-Education/css&&js/bootstrap-select.css">
	
	

</head>
<body>
<input type="button" value="点击" onclick="dianji()">
	<script type="text/javascript">
	function dianji(){
		
		window.open ("www.baidu.com", "newwindow", "height=100, width=100, top=0, left=0,toolbar=no, menubar=no, scrollbars=no, resizable=no, location=n o, status=no")	
			
		
	}
	
	</script>



	<!-- 第二层(1) -->	
		<div class = "containright_two number1page" >
			<!-- 参数信息 -->
			<div class = "containright_two_1">
				<h1 class = "canshu">角色管理</h1>
				<ol class="breadcrumb">
					<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
					<li><a href="#">系统配置</a></li>
					<li class="active">参数信息</li>
				</ol>
			</div>
			

			<!-- 具体内容 --><!-- 1 --><!-- 先隐藏 -->
			<div class="containright_two_2" >
				<div class = "containright_two_2_1">
					<div style="font-weight:700">
                            <span class="f_span" style="color: black;">角色名: <input class="cla_input" type="text" id="rolename" name="FirstName" value=""></span>
                            <span><button type="submit" id="cc" onclick="roleSearch()" class="btn btn-primary">查询</button></span>

                            <span id="del_span"><button type="submit" onclick="bacthDelRole()" id="klk" class="btn btn-primary">删除</button></span>
                            <span id="add_span"><button type="submit" id="btn_add" class="btn btn-primary">添加</button></span>
                            <br>
                            <br>
                        </div>
				</div>
				
				<!-- 2 -->
			<div class="col-sm-6"><div class="dataTables_length" id="example1_length"><label>显示 <select name="example1_length" aria-controls="example1" class="form-control input-sm"><option value="10">10</option><option value="25">25</option><option value="50">50</option><option value="100">100</option></select> 项结果</label></div></div>
			
			
			<!-- 3 (这里需要手动隐藏)-->
				<div class="row"><div class="col-sm-12"><table id="example1" class="table table-bordered table-striped dataTable no-footer" role="grid" aria-describedby="example1_info" style="display: none">
                            <thead>
	                            <tr role="row"><th id="th_check" class="sorting_disabled" rowspan="1" colspan="1"><input id="checkAll" type="checkbox"></th><th class="sorting_disabled rolename" rowspan="1" colspan="1">角色名</th><th class="sorting_disabled" rowspan="1" colspan="1">创建时间</th><th rowspan="1" colspan="1">操作</th></tr>
                            </thead>
                            <tbody>
                            <tr role="row" class="odd">
								<td><input type="checkbox" class="checkSub" value="7"></td>
								<td class=" rolename">代码测试角色</td>
								<td><div>2018-08-10</div></td>
								<td><button type="button" onclick="update_role(7)" data-toggle="tooltip" data-placement="top" title="修改" class="btn_edit_c text-purple "><span class="glyphicon glyphicon-wrench" aria-hidden="true"></span></button><button type="button" onclick="del_role(7)" data-toggle="tooltip" data-placement="top" title="删除" class="btn_edit_c text-red glyphicon glyphicon-trash"></button><button onclick="assin_permission(7)" type="button" data-toggle="tooltip" data-placement="top" title="分配权限" class="btn_edit_c text-blue fa "><span class="glyphicon glyphicon-new-window" aria-hidden="true"></span></button></td>
							</tr>
							<tr role="row" class="even">
								<td><input type="checkbox" class="checkSub" value="5"></td>
								<td class=" rolename">咨询师</td>
								<td><div>2018-04-19</div></td>
								<td><button type="button" onclick="update_role(7)" data-toggle="tooltip" data-placement="top" title="修改" class="btn_edit_c text-purple "><span class="glyphicon glyphicon-wrench" aria-hidden="true"></span></button><button type="button" onclick="del_role(7)" data-toggle="tooltip" data-placement="top" title="删除" class="btn_edit_c text-red glyphicon glyphicon-trash"></button><button onclick="assin_permission(7)" type="button" data-toggle="tooltip" data-placement="top" title="分配权限" class="btn_edit_c text-blue fa "><span class="glyphicon glyphicon-new-window" aria-hidden="true"></span></button></td>
							                            
				</div>
			
		<div>


</body>
</html>