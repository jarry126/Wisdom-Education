<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>智慧教育平台</title>

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

<style type="text/css">
	*{
		margin:0;
		padding:0;
	}
	#containleft{
		
		float:left;
		width:230px;
		background-color: #222d32;
		height:1000px;
	}
	#containright{
		position: absolute;
		top:0px;
		right: 0px;
		height: 800px;
		left: 230px;
	}
	#containleft_top{
		width:230px;
		height:50px;	
	}
	#containright_one{
		
		height:50px;
		background-color: #3c8dbc;
	}
	span{
		color: #b8c7ce;
	}
	
	.sidebar-menu .treeview-menu{
		background-color: #2C3B41;
	}
	.a1{
		color: #8aa4af;
		
	}
	.canshu{
		margin:0;
		font-size: 24px;
		font-family: 'Source Sans Pro', sans-serif;
		font-weight: 500;
		color: inherit;
		line-height: 1.1;
		display: inline-block;
		margin-left: 10px;
	}
	.containright_two{
		background-color: #ECF0F5;
		height: 950px;
	}
	.containright_two_1{
		padding: 15px;
	}
	.breadcrumb{
		float:right;
		margin-right: 0px;
		background-color: #ECF0F5;
		
	}
	.containright_two_2{
		height: 500px;
		font-size: 14px;
		background-color: white;
		margin: 10px 25px;
		padding: 20px;
		margin-top: 5px;
	}
	.containright_two_2_1{
		margin: -2px;
	}
	.col-sm-6{
		position: relative;
		left: -15px;
	}
	.btn_edit_c{
		padding: 5px;
		background-color: white;
	}
	#number4page{
		margin-left: 3px;
		margin-right: 3px;
	}
	.f_span{
		color: black;
	}
	.b_span{
		color: black;
	}
	ul{
		margin-left: 20px;
	}
	.role_menu_button_divclass{
		margin-left: 20px;
		display: inline-block;
	}
	.childrentr{
		margin-left: 10px;
	}
	
</style>
</head>
<body>
	<!-- 左边 -->
	<div id = "containleft">
		<div id = "containleft_top"></div>
		<!-- 主要内容 -->
		<div>
			<section class="sidebar" style="height: auto;">
		      <ul class="sidebar-menu">
		       
		        <li class="treeview">
		          <a href="#" style="text-decoration: none;" style="text-decoration: none;">
		            <i class="fa fa-dashboard" id="pzinfo"></i> <span>系统配置</span>
		            <span class="pull-right-container">
		             <i style="margin-right: 10px;font-size: 2px;">
		              	<span class="glyphicon glyphicon-menu-left" aria-hidden="true" ></span>
		              </i>
		            </span>
		          </a>
		          
		        </li>
		       
		       
		        <li class="treeview">
		          <a href="#" style="text-decoration: none;">
		            <i class="fa fa-files-o"></i>
		            <span>用户管理</span>
		            <span class="pull-right-container">
		             <i style="margin-right: 10px;font-size: 2px;">
		              	<span class="glyphicon glyphicon-menu-left" aria-hidden="true" ></span>
		              </i>
		            </span>
		          </a>
		          
		        </li>
		      
		       
		        <li class="treeview active">
		          <a href="#" style="text-decoration: none;" class="a_treeview">
		            <i class="fa fa-unlock"></i>
		            <span>权限管理</span>
		            <span class="pull-right-container">
		              <i style="margin-right: 10px;font-size: 2px;">
		              	<span class="glyphicon glyphicon-menu-left" aria-hidden="true" ></span>
		              </i>
		            </span>
		          </a>
		          <ul class="treeview-menu menu-open" style="display: none;">
		          
		          	 <li class="bandcla" ><a href="javascript:void(0);" class = "a1 a14"><i class="fa fa-circle-o"></i>用户管理</a></li>
		          
		            <li class="bandcla" ><a href="javascript:void(0);" class = "a1 a11"><i class="fa fa-circle-o"></i>角色管理</a></li>
		          
		          
		            <li class="bandcla"><a href="javascript:void(0);" class = "a1 a12"><i class="fa fa-circle-o"></i> 菜单管理</a></li>
		          
		          
		            <li class="bandcla"><a href="javascript:void(0);" class = "a1 a13"><i class="fa fa-circle-o"></i> 按钮管理</a></li>
		          
		           
		           
		          </ul>
		        </li>
		       
		        
		        <li class="treeview">
		          <a href="#" style="text-decoration: none;">
		            <i class="fa fa-laptop"></i>
		            <span>组织机构</span>
		            <span class="pull-right-container">
		              <i style="margin-right: 10px;font-size: 2px;">
		              	<span class="glyphicon glyphicon-menu-left" aria-hidden="true" ></span>
		              </i>
		            </span>
		          </a>
		         
		        </li>
		       
		       
		        <li class="treeview">
		          <a href="#" style="text-decoration: none;">
		            <i class="fa fa-edit"></i> <span>资源管理</span>
		            <span class="pull-right-container">
		             <i style="margin-right: 10px;font-size: 2px;">
		              	<span class="glyphicon glyphicon-menu-left" aria-hidden="true" ></span>
		              </i>
		            </span>
		          </a>
		         
		        </li>
		       
		       
		        <li class="treeview">
		          <a href="#" style="text-decoration: none;">
		            <i class="fa fa-table"></i> <span>培养方案</span>
		            <span class="pull-right-container">
		              <i style="margin-right: 10px;font-size: 2px;">
		              	<span class="glyphicon glyphicon-menu-left" aria-hidden="true" ></span>
		              </i>
		            </span>
		          </a>
		         
		        </li>
		       
		       
		        <li class="treeview">
		          <a href="#" style="text-decoration: none;">
		            <i class="fa fa-folder"></i> <span>班级管理</span>
		            <span class="pull-right-container">
		              <i style="margin-right: 10px;font-size: 2px;">
		              	<span class="glyphicon glyphicon-menu-left" aria-hidden="true" ></span>
		              </i>
		            </span>
		          </a>
		         
		        </li>
		       
		        
		        <li class="treeview">
		          <a href="#" style="text-decoration: none;">
		            <i class="fa fa-tumblr"></i> <span>授课管理</span>
		            <span class="pull-right-container">
		              <i style="margin-right: 10px;font-size: 2px;">
		              	<span class="glyphicon glyphicon-menu-left" aria-hidden="true" ></span>
		              </i>
		            </span>
		          </a>
		          <ul class="treeview-menu" style="display: none;">
		           
		            <li class="bandcla"><a href="javascript:view('/teaching/toTeaching')"><i class="fa fa-circle-o"></i> 课堂教学</a></li>
		           
		          </ul>
		        </li>
		       
		       
		        <li class="treeview">
		          <a href="#" style="text-decoration: none;">
		            <i class="fa fa-vimeo-square"></i> <span>通知公告</span>
		            <span class="pull-right-container">
		              <i style="margin-right: 10px;font-size: 2px;">
		              	<span class="glyphicon glyphicon-menu-left" aria-hidden="true" ></span>
		              </i>
		            </span>
		          </a>
		          
		         
		        </li>
		       
		       
		        <li class="treeview2">
		          <a href="#" style="text-decoration: none;">
		            <i class="fa fa-reorder"></i> <span>考试管理</span>
		            <span class="pull-right-container">
		              <i style="margin-right: 10px;font-size: 2px;">
		              	<span class="glyphicon glyphicon-menu-left" aria-hidden="true" ></span>
		              </i>
		            </span>
		          </a>
		          
		          <!-- 下面这段应该从数据中拿取 -->
		          <ul class="treeview-menu menu-open" style="display: none;">
		          
		          	 <li class="bandcla11" name="15"><a href="javascript:void(0);" class = "a1"><span class="glyphicon glyphicon-unchecked" aria-hidden="true"></span>题库管理</a></li>
		          
		            <li class="bandcla2" name="16"><a href="javascript:void(0);" class = "a1"><span class="glyphicon glyphicon-unchecked" aria-hidden="true"></span>试卷管理</a></li>
		          
		          
		            <li class="bandcla3" name="17"><a href="javascript:void(0);" class = "a1"><span class="glyphicon glyphicon-unchecked" aria-hidden="true"></span>考试汇总</a></li>
		          
		          </ul>
		         
		        </li>
		        

		      
		       
		        <li class="treeview">
		          <a href="#" style="text-decoration: none;">
		            <i class="fa  fa-male"></i> <span>考评管理</span>
		            <span class="pull-right-container">
		             <i style="margin-right: 10px;font-size: 2px;">
		              	<span class="glyphicon glyphicon-menu-left" aria-hidden="true" ></span>
		              </i>
		            </span>
		          </a>
		         
		        </li>
	      
		        <li class="treeview">
		          <a href="#" style="text-decoration: none;">
		            <i class="fa  fa-dribbble"></i> <span>数据分析</span>
		            <span class="pull-right-container">
		              <i style="margin-right: 10px;font-size: 2px;">
		              	<span class="glyphicon glyphicon-menu-left" aria-hidden="true" ></span>
		              </i>
		            </span>
		          </a>
		         
		        </li>
		      		      
		        <li class="treeview">
		          <a href="#" style="text-decoration: none;">
		            <i class="fa  fa-dribbble"></i> <span>咨询管理</span>
		            <span class="pull-right-container">
		              <i style="margin-right: 10px;font-size: 2px;">
		              	<span class="glyphicon glyphicon-menu-left" aria-hidden="true" ></span>
		              </i>
		            </span>
		          </a>
		         
		        </li>

		        <li class="treeview">
		          <a href="#" style="text-decoration: none;">
		            <i class="fa  fa-dribbble"></i> <span>操作日志</span>
		            <span class="pull-right-container">
		             <i style="margin-right: 10px;font-size: 2px;">
		              	<span class="glyphicon glyphicon-menu-left" aria-hidden="true" ></span>
		              </i>
		            </span>
		          </a>
		        
		        </li>
		      
		       <li class="treeview">
		          <a href="#" style="text-decoration: none;">
		            <i class="fa  fa-dribbble"></i> <span>评鉴管理</span>
		            <span class="pull-right-container">
		              <i style="margin-right: 10px;font-size: 2px;">
		              	<span class="glyphicon glyphicon-menu-left" aria-hidden="true" ></span>
		              </i>
		            </span>
		          </a>
		         
		         
		        </li>
		       
		       <li class="treeview">
		          <a href="#" style="text-decoration: none;">
		            <i class="fa  fa-dribbble"></i> <span>意向客户</span>
		            <span class="pull-right-container">
		             <i style="margin-right: 10px;font-size: 2px;">
		              	<span class="glyphicon glyphicon-menu-left" aria-hidden="true" ></span>
		              </i>
		            </span>
		          </a>
		         
		          
		        </li>
		       
		      </ul>
		    </section>
		</div>
	</div>

<!-- 考试管理 -->
<script type="text/javascript">
	// 打开页面
	$(".treeview2").click(function(){
		var i = $(this).find("ul").first();
		i.toggle();
		
		//alert("ceshi");
		/* console.log($disploytrueornone);
		if($disploytrueornone == "none"){
			$(this).find("ul[class='treeview-menu']").first().css("display","block");
		}else if($disploytrueornone == "block"){
			$(this).find("ul[class='treeview-menu']").first().css("display","none");
		} */
	})
	
	//点击触发考试管理右边页面
	$(".bandcla11").click(function(){
		$("#number4page").css("display","block");
		$("#tbdoy4-1").empty();
		//从后端得到数据放入里面
		$.ajax({
		        type: 'POST',
		        url: "/Wisdom-Education/exam_allConnent/selectAll.action",
		        async: false,
		        data:{"current_id":$(this).attr("name")},
		        success: function (data2) {	
		        	console.log(data2);
					var d = ""
		        	for(var i=0;i<data2.length;i++){
		        		var a = Number(1) +Number(i);
						 //d.push('<div class="role_menu_button_divclass"><input class="role_menu_button_class" type="checkbox"  name="role_button_id" value='+data2[i]["id"]+' class="checkSub">'+data2[i]["sname"]+'</div>');
						 d += '<tr role="row" ><td class=" text-center"><input type="checkbox" class="checkchild" value='+data2[i]["id"]+'></td><td>'+a+'</td><td><div>'+data2[i]["sname"]+'<div></td><td><div>启用</div></td><td class=" text-center"><button type="button" onclick="updatecurrent_id('+data2[i]["id"]+')" data-toggle="tooltip" data-placement="top" title="修改" class="btn_edit_c text-purple add_btn_1"><span class="glyphicon glyphicon-wrench" aria-hidden="true"></span></button><button type="button" onclick="del_ques('+data2[i]["id"]+')" data-toggle="tooltip" data-placement="top" title="删除" class="btn_edit_c text-red glyphicon glyphicon-trash"></button></td></tr>';
				 }
					
					$("#tbdoy4-1").append(d);
					
					
		        }
		})
	})
	
	
	//点击触发    试卷管理   右边页面
	$(".bandcla2").click(function(){
		$("#number4page").css("display","block");
		$("#tbdoy4-1").empty();
		$("#row1").empty();
		$.ajax({
	        type: 'POST',
	        url: "/Wisdom-Education/exam_allConnent/selectAllExamPaper.action",
	        async: false,
	        success: function (data2) {	
	        	console.log(data2);
				var d = ""
				$("#row1").append('<th id="th_check" class="sorting_disabled text-center" rowspan="1" colspan="1"><input id="checkAll" type="checkbox"></th><th class="sorting_disabled" rowspan="1" colspan="1">试卷名称</th><th class="sorting_disabled" rowspan="1" colspan="1">班级</th><th class="sorting_disabled" rowspan="1" colspan="1">时长（分钟）</th><th class="sorting_disabled" rowspan="1" colspan="1">起止时间</th><th class="sorting_disabled" rowspan="1" colspan="1">试卷地址</th><th class="sorting_disabled text-center" rowspan="1" colspan="1">操作</th>')
				
				
	        	for(var i=0;i<data2.length;i++){
	        		var a = Number(1) +Number(i);
					 //d.push('<div class="role_menu_button_divclass"><input class="role_menu_button_class" type="checkbox"  name="role_button_id" value='+data2[i]["id"]+' class="checkSub">'+data2[i]["sname"]+'</div>');
					 d += '<tr role="row" class="odd">'+
						'<td class=" text-center"><input type="checkbox" class="checkchild" value="47"></td><td>'+data2[i]["sname"]+'</td>'+
						'<td><span style="color:black">'+data2[i]["csname"]+'</td>'+
						'<td><span style="color:black">'+data2[i]["len"]+'</td>'+
						'<td><span style="color:black">'+data2[i]["dstart"]+'</td>'+
						'<td><a href="'+data2[i]["surl"]+'" target="_Blank">'+data2[i]["surl"]+'</a></td>'+
						'<td class=" text-center"><button type="button" data-toggle="tooltip" onclick="del_paper(47)" data-placement="top" title="删除" class="btn_edit_c text-red glyphicon glyphicon-trash"></button></td>'+
					'</tr>';
			 }
				
				$("#tbdoy4-1").append(d);
				
				
	        }
		})
		
		
		
	})
	
	

</script>


	
	<!-- 右边 -->
	<div id = "containright">
	
		<!-- 第一层 -->
		<div id = containright_one>

		</div>
		
		
	<div >
	
	
		<!-- 第二层后加（4）其实是1 -->
		
        <div  class = "containright_two" id = "number4page" style="display: none;">
            <div class="col-xs-12">

                <div class="box">

                    <!-- /.box-header -->
                    <div class="box-body">

                        <div style="font-weight:700">
                            <span class="f_span">用户名: <input class="cla_input" id="ser_username" type="text" name="FirstName" value=""></span>
                           

                            <span><button type="submit" id="ser_submit" class="btn btn-primary">查询</button></span>

                            <span id="del_span"><button type="submit" id="del_submit" class="btn btn-primary">删除</button></span>
                            <span id="add_span"><button type="submit" id="btn_add4" class="btn btn-primary">添加</button></span>
                            <span id="export_span"><button type="submit" id="export" class="btn btn-primary">导出</button></span>
                            <br>
                            <br>
                        </div>

                        <div id="example1_wrapper" class="dataTables_wrapper form-inline dt-bootstrap no-footer"><div class="row"><div class="col-sm-6"><div class="dataTables_length" id="example1_length"><label>显示 <select name="example1_length" aria-controls="example1" class="form-control input-sm"><option value="10">10</option><option value="25">25</option><option value="50">50</option><option value="100">100</option></select> 项结果</label></div></div><div class="col-sm-6"></div></div><div class="row"><div class="col-sm-12"><table id="example1" class="table table-bordered table-striped dataTable no-footer" role="grid" aria-describedby="example1_info">
                            <thead>
                            <tr role="row" id = "row1"><th id="th_check" class="sorting_disabled text-center" rowspan="1" colspan="1"><input id="checkAll" type="checkbox"></th><th class="sorting_disabled" rowspan="1" colspan="1">序号</th><th class="sorting_disabled" rowspan="1" colspan="1">类型</th><th class="sorting_disabled" rowspan="1" colspan="1">状态</th><th class="sorting_disabled" rowspan="1" colspan="1">操作</th>
                           
                            </thead>
                          	<tbody id = "tbdoy4-1">
                          		<!-- 在这里插入数据 -->
                          	</tbody>
                            

                        </table></div></div><div class="row"><div class="col-sm-5"><div class="dataTables_info" id="example1_info" role="status" aria-live="polite">显示第 1 至 2 项结果，共 2 项</div></div><div class="col-sm-7"><div class="dataTables_paginate paging_simple_numbers" id="example1_paginate"><ul class="pagination"><li class="paginate_button previous disabled" id="example1_previous"><a href="#" aria-controls="example1" data-dt-idx="0" tabindex="0">上页</a></li><li class="paginate_button active"><a href="#" aria-controls="example1" data-dt-idx="1" tabindex="0">1</a></li><li class="paginate_button next disabled" id="example1_next"><a href="#" aria-controls="example1" data-dt-idx="2" tabindex="0">下页</a></li></ul></div></div></div></div>
                    </div>
                    <!-- /.box-body -->
                </div>
                <!-- /.box -->
            </div>
            <!-- /.col -->
        </div>
        <!-- /.row -->
        
        
        
        <!-- 第四层菜单层 -->
        <div class="modal fade in" id="myModal4" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" style="display: none;">
        <div class="modal-dialog" id="dialog_wedth" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                    <h4 class="modal-title" id="myModalLabel">新增</h4>
                </div>
                <div class="modal-body">
                    <form class="form-horizontal" id="myForm4" role="form" novalidate="novalidate" >
	                   		<input type="hidden" class = "form-control" name="ID" value="-1">-1</input>
	                        <div class="form-group">
	                            <label class="col-sm-2 control-label">用户名：</label>
	                            <div class="col-sm-10">
	                                <input type="text" class="form-control" id="username" name="SNAME" placeholder="请输入用户名">
	                            </div>
	                        </div>
	                        <div id="div_pas" class="form-group">
	                            <label class="col-sm-2 control-label">密码：</label>
	                            <div class="col-sm-10">
	                                <input type="text" class="form-control" id="userpwd" name="SPASSWD" placeholder="请输入密码">
	                            </div>
	                        </div>
	                       
	                        <div class="form-group">
	                            <label class="col-sm-2 control-label">性别：</label>
	                            <div class="col-sm-10">
	                                <select name="SEX" id="usersex" class="form-control" style="width: auto;">
	                                    <option value="1">男</option>
	                                    <option value="0">女</option>
	                                </select>
	                            </div>
	                        </div>
	                       
	                        <div class="form-group">
	                            <label class="col-sm-2 control-label">手机：</label>
	                            <div class="col-sm-10">
	                                <input type="text" class="form-control" id="userphone" name="MOBILEPHONE" placeholder="请输入手机号">
	                            </div>
	                        </div>
	                        
	                        <div class="form-group">
	                            <label class="col-sm-2 control-label">邮箱：</label>
	                            <div class="col-sm-10">
	                                <input type="text" class="form-control" id="useremail" name="SEMAIL" placeholder="请输入邮箱">
	                            </div>
	                        </div>
                       
	                        <div class="form-group">
	                        <label class="col-sm-2 control-label">有效期：</label>
	                        <div class="col-sm-10">
	                           <input id="date" type="date" name="VALIDTIME" value="" placeholder="" />
	                        </div>
		                    </div>
	                   
                    </form>



                </div>

                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span>关闭</button>
                    <button type="button" id="btn_submit" class="btn btn-primary">保存</button>
                </div>
            </div>
        </div>
    </div>
    
    <!-- 所有权限都用这个div -->
    <div class="modal fade in" id="myModalmodal4" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" style="display: none;">
		    <div class="modal-dialog" style="width:650px" role="document">
		        <div class="modal-content">
		            <div class="modal-header">
		                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
		                <h4 class="modal-title" id="myModalLabel1">分配角色</h4>
		            </div>
		            <div class="modal-body">
		                <form class="form-horizontal" id="assignRolesForm" action="" role="form">                	
		                	<input type="hidden" class="form-control" id="assin_role_groupId" value="7">
		                    <div class="form-group">
		                        <label class="col-sm-2 control-label">组名：</label>
		                        <div class="col-sm-10">
		                            <input disabled="true" type="text" class="form-control" id="assin_role_groupname" placeholder="用户管理">
		                        </div>
		                    </div>
		                    <div class="form-group">
		                        <label class="col-sm-2 control-label">分配角色：</label>
		                    </div>
		                    <div class="form-group">
		
		                        <div id="menu_div">
		                            <ul class="menuTree accordion">
		                                <li class="parentMenu">
		                                	<div class="childMenudiv">
		                                		 <!-- 插入头 -->
		                                	</div>
		                                  
		                                    <ul class="childMenu ul_1">
			                                        <!-- 这里写分配权限代码 -->
		                                    </ul>
		                                </li>
		                            </ul>
		                        </div>
		                    </div>
		                </form>
		            </div>
		            <div class="modal-footer">
		                <button type="button" class="btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span>关闭</button>
		                <button type="button" id="btn_submit0" onclick="btn_submit0onclick(this)" class="btn btn-primary" data-dismiss="modal"><span class="glyphicon glyphicon-floppy-disk" aria-hidden="true"></span>保存</button>
		            </div>
		        </div>
		    </div>
		</div>
		


		<!-- 所有层权限操作role_menu_onclick,权限页面生成-->
 <script type="text/javascript">
	   		function role_menu_onclick(obj){
	   			// 当前菜单名字
	   			var $managerName = $(obj).parent().parent().parent().find("input[name='memu_name']").first().val();
	   			//alert($managerName);
	   			// 当前点击按钮id
	   			var $current_role_id = $(obj).parent().parent().find("input[name='checkboxall2']").first().val();
	   			//alert($current_role_id);
   				$("#myModalmodal4").css("display","block");
   				// 将得到的菜单名放入$("#myModalmodal4")中
   				//$.post("/Wisdom-Education/allLImitManagerHandle/createLimitPage.action",{"current_role_id":$current_role_id,"managerName":$managerName},function(data){
					
   				
				$.ajax({
				        type: 'POST',
				        url: "/Wisdom-Education/allLImitManagerHandle/createLimitPage.action",
				        async: false,
				        data:{"current_role_id":$current_role_id,"managerName":$managerName},
				        success: function (data) {	
   					
	   					console.log("返回数据："+data);
	   					// 再来一个ajax，当前角色id绑定哪些菜单
	   					/* $.get("/Wisdom-Education/roleManagerHandle/roleBandMenu.action",{"role_current_id":e},function(data){
	   						alert(data);
	   					}) */
	   					
						//$(".a14").trigger("click")；触发点击事件
						//清空
						$("#myModalmodal4").find(".childMenu").empty();
						$(".childMenudiv").empty();
						//var d = [];
						var d = "";
						var dataJSON = data;
						// 在.childMenu标签上面添加标签,表示哪个管理操作
						$(".childMenudiv").append('<label><input type="checkbox" class="limitTop" name="managerName" value="'+$managerName+'">'+$managerName+'</label>');
						 // 添加隐藏标签，表示点击标签id
						 $(".childMenudiv").append('<input type="hidden" class="chkAll" name="current_click_id" value='+$current_role_id+'>');
						 // 添加隐藏标签，表示当前是修改还是添加
						 //$(".childMenudiv").append('<input type="hidden" id="addOrUpdate" name="addOrUpdate" value="">');
						
						 // 如果是角色管理，需要循环2次，第2次得到按钮，加在角色 权限下面
						 if($managerName == "角色管理"){
							 console.log("角色管理下第2次ajax请求")
							 
							 for(var i=0;i<dataJSON.length;i++){
								
	
								var a = dataJSON[i];
								var c = Number(i) + Number(1);
								
								if(a["checked"] == "checked"){
									//d.push('<li><label><input type="checkbox" checked= "checked" name="menu_id" value='+a["id"]+' class="checkSub">'+a["sname"]+'</label></li>')
									d += '<div class = "menu_button_div"><li><label><input type="checkbox" checked= "checked" name="menu_id" value='+a["id"]+' class="checkSub">'+a["sname"]+'</label></li>';
									$(".childMenudiv").find("input[class='limitTop']").first().attr({"checked":"checked"});
									

									$.ajax({
								        type: 'POST',
								        url: "/Wisdom-Education/allLImitManagerHandle/roleMenuButton.action",
								        async: false,
								        data:{"current_role_id":$current_role_id,"current_menu_id":a["id"]},
								        success: function (data2) {
	
								        	for(var i=0;i<data2.length;i++){
												/*  alert(data2[i]["checked"]);
												 glert(data2[i]["id"]); */
												 if(data2[i]["checked"] == "checked"){
													 //d.push('<div class="role_menu_button_divclass"><input class="role_menu_button_class" type="checkbox" checked= "checked" name="role_button_id" value='+data2[i]["id"]+' >'+data2[i]["sname"]+'</div>');
													 d += '<div class="role_menu_button_divclass"><input class="role_menu_button_class" type="checkbox" checked= "checked" name="role_button_id" value='+data2[i]["id"]+' >'+data2[i]["sname"]+'</div>';
												 }else{
													 //d.push('<div class="role_menu_button_divclass"><input class="role_menu_button_class" type="checkbox"  name="role_button_id" value='+data2[i]["id"]+' class="checkSub">'+data2[i]["sname"]+'</div>');
													 d += '<div class="role_menu_button_divclass"><input class="role_menu_button_class" type="checkbox"  name="role_button_id" value='+data2[i]["id"]+' class="checkSub">'+data2[i]["sname"]+'</div>';
												 }	 
											 }
	
								        }})
								      
								        d +="</div>";
									
									 // $.post("/Wisdom-Education/allLImitManagerHandle/roleMenuButton.action",{"current_role_id":$current_role_id,"current_menu_id":a["id"]},function(data2){
										// for(var i=0;i<data2.length;i++){
											/*  alert(data2[i]["checked"]);
											 glert(data2[i]["id"]); */
											/// if(data2[i]["checked"] == "checked"){
												// d.push('<li><label><input type="checkbox" checked= "checked" name="role_button_id" value='+data2[i]["id"]+' >'+data2[i]["sname"]+'</label></li>');
												 
											// }else{
												// d.push('<li><label><input type="checkbox"  name="role_button_id" value='+data2[i]["id"]+' class="checkSub">'+data2[i]["sname"]+'</label></li>');
											 //}	 
										 //}
									  //}
									 //) 
									 
									 }else if($managerName == "菜单管理"){
									  //d.push('<li><label><input type="checkbox" name="menu_id" value='+a["id"]+' class="checkSub">'+a["sname"]+'</label></li>')
									  d += '<div class = "menu_button_div><li><label><input type="checkbox" name="menu_id" value='+a["id"]+' class="checkSub">'+a["sname"]+'</label></li>';
									  
									  $.ajax({
								        type: 'POST',
								        url: "/Wisdom-Education/allLImitManagerHandle/roleMenuButton.action",
								        async: false,
								        data:{"current_role_id":$current_role_id,"current_menu_id":a["id"]},
								        success: function (data2) {
	
								        	for(var i=0;i<data2.length;i++){
	
													 //d.push('<div class="role_menu_button_divclass"><input class="role_menu_button_class" type="checkbox"  name="role_button_id" value='+data2[i]["id"]+' class="checkSub">'+data2[i]["sname"]+'</div>');
													 d += '<div class="role_menu_button_divclass"><input class="role_menu_button_class" type="checkbox"  name="role_button_id" value='+data2[i]["id"]+' class="checkSub">'+data2[i]["sname"]+'</div></div>';
											 }
	
								        }})

								}else{
									
									//d.push('<li><label><input type="checkbox" name="menu_id" value='+a["id"]+' class="checkSub">'+a["sname"]+'</label></li>')
									  d += '<div class = "menu_button_div><li><label><input type="checkbox" name="menu_id" value='+a["id"]+' class="checkSub">'+a["sname"]+'</label></li>';
									  
									  $.ajax({
								        type: 'POST',
								        url: "/Wisdom-Education/allLImitManagerHandle/roleMenuButton.action",
								        async: false,
								        data:{"current_role_id":$current_role_id,"current_menu_id":a["id"]},
								        success: function (data2) {
	
								        	for(var i=0;i<data2.length;i++){
												
													 //d.push('<div class="role_menu_button_divclass"><input class="role_menu_button_class" type="checkbox"  name="role_button_id" value='+data2[i]["id"]+' class="checkSub">'+data2[i]["sname"]+'</div>');
													 d += '<div class="role_menu_button_divclass"><input class="role_menu_button_class" type="checkbox"  name="role_button_id" value='+data2[i]["id"]+' class="checkSub">'+data2[i]["sname"]+'</div></div>';
											 }
	
								        }})
									
								}

							}
						 }else{ // 不是用户管理
							 for(var i=0;i<dataJSON.length;i++)
								{
								
								var a = dataJSON[i];
								var c = Number(i) + Number(1);
								
								if(a["checked"] == "checked"){
									//d.push('<li><label><input type="checkbox" checked= "checked" name="menu_id" value='+a["id"]+' class="checkSub">'+a["sname"]+'</label></li>')
									d += '<li><label><input type="checkbox" checked= "checked" name="menu_id" value='+a["id"]+' class="checkSub">'+a["sname"]+'</label><input type="text" readonly="readonly" name="url" value="'+a["url"]+'"></li>';
									$(".childMenudiv").find("input[class='limitTop']").first().attr({"checked":"checked"});
								}else{
									//d.push('<li><label><input type="checkbox" name="menu_id" value='+a["id"]+' class="checkSub">'+a["sname"]+'</label></li>')
									d += '<li><label><input type="checkbox" name="menu_id" value='+a["id"]+' class="checkSub">'+a["sname"]+'</label><input type="text" readonly="readonly" name="url" value="'+a["url"]+'"></li>';
								}
								
							}
						 }
						 
						 
						 //console.log("这是d的对象集合："+d);
						/* 
						for(i in d){
							$("#myModalmodal4").find(".childMenu").first().append(d[i]);
							} */
						
						 $("#myModalmodal4").find(".childMenu").first().append(d);
						
						
						}
	   		})
   		}
</script>
		


<!-- 所有权限按钮保存操作(#btn_submit0保存，#assignRolesForm form表单) .chkAll-->
<script type="text/javascript">
function btn_submit0onclick(obj){
	if($(obj).parent().parent().find("input[class='limitTop']").first().val()== "角色管理"){
		var $rolename = $("#assignRolesForm").find("input[class='limitTop']").first().val();
		console.log("角色 名字："+$rolename);
		// 循环菜单管理上的div
		console.log("菜单管理_按钮管理"+$(".menu_button_div").first());
		$(".menu_button_div").each(function(index,obj){
			//var $inputArray = [];
			var $inputString = "";
			 if($(obj).find("input[class='checkSub']").attr("checked") == "checked"){
				
				 // 循环加按钮id加入字符串中
				 $(obj).find("div[class='role_menu_button_divclass']").each(function(index,obj){
					 
					 $(obj).find("input[class='role_menu_button_class']:checked").each(function(index2,obj2){
						//if($(obj2).attr("checked") == "checked"){
							 //$inputArray.push($(obj2).val());
							$inputString += $(obj2).val();
							$inputString +="-";
						//}	 
					 })
					 
						 
					
				 })
				 
				/*  alert("rolename:"+$rolename);
				 alert("roleid:"+$("#assignRolesForm").find("input[class='chkAll']").first().val());
				 alert("menuid:"+$(obj).find("input[class='checkSub']").first().val()); */
				 $.ajax({
					   type: "POST",
					   url: "/Wisdom-Education/allLImitManagerHandle/limitManagerHandle.action",
					   data: {"managerName":$rolename,"roleid":$("#assignRolesForm").find("input[class='chkAll']").first().val(),"menuid":$(obj).find("input[class='checkSub']").first().val(),"buttonAll":$inputString},
					   success:function(msg){
						   $("#myModalmodal4").css("display","none");
							// 每次添加前，表里面的内容清空
				   		  	$("#myModalmodal4").find('input[type=text],select,input[type=hidden]').each(function() {
				        			$(this).val('');
				   				 });
							
							
				   		 $(".a11").trigger("click");//触发点击事件1
					   
					   }
							
				   				});
			 

			 }
		 	
		 
		 })
		 
	}else{
		
		$.ajax({
			   type: "POST",
			   url: "/Wisdom-Education/allLImitManagerHandle/limitManagerHandle.action",
			   data: $("#assignRolesForm").serialize(),
			   success: function(msg){
					$("#myModalmodal4").css("display","none");
					// 每次添加前，表里面的内容清空
		   		  	$("#myModalmodal4").find('input[type=text],select,input[type=hidden]').each(function() {
		        			$(this).val('');
		   				 });
		   		if(msg == "1"){
		   			$(".a11").trigger("click");//触发点击事件1
		   		}else if(msg == "2"){
		   			$(".a12").trigger("click");//触发点击事件2
		   		}else if(msg == "3"){
		   			$(".a13").trigger("click");//触发点击事件3
		   		}else if(msg == "4"){
		   			$(".a14").trigger("click");//触发点击事件4
		   		}
			   },
			    error: function(XMLHttpRequest){
			     alert( "Error: " + XMLHttpRequest.responseText);
			   }
			});
	}
	
}





/* $("#btn_submit0").click(function(){
		$.ajax({
		   type: "POST",
		   url: "/Wisdom-Education/allLImitManagerHandle/limitManagerHandle.action",
		   data: $("#assignRolesForm").serialize(),
		   success: function(msg){
				$("#myModalmodal4").css("display","none");
				// 每次添加前，表里面的内容清空
	   		  	$("#myModalmodal4").find('input[type=text],select,input[type=hidden]').each(function() {
	        			$(this).val('');
	   				 });
	   		if(msg == "1"){
	   			$(".a11").trigger("click");//触发点击事件1
	   		}else if(msg == "2"){
	   			$(".a12").trigger("click");//触发点击事件2
	   		}else if(msg == "3"){
	   			$(".a13").trigger("click");//触发点击事件3
	   		}else if(msg == "4"){
	   			$(".a14").trigger("click");//触发点击事件4
	   		}
		   },
		    error: function(XMLHttpRequest){
		     alert( "Error: " + XMLHttpRequest.responseText);
		   }
		});
	}) */

</script>






    
    
       <!-- 第4层，用户分配角色菜单 -->
	   <script type="text/javascript">
	   		function dis_cla(e){
	   				$("#myModalmodal4").css("display","block");
	   				$("#myModalmodal4").find("input").val();
	   		}
	   </script>
  
    
    <!-- 第四层菜单保存操作,再将所有数据返回给前端 -->
   <script type="text/javascript">
   		
   	/* 	$("#btn_submit").click(function(){
   			$.post("/Wisdom-Education/userManageHandle/addUser.action", $("#myForm4").serialize(),function(data){
   				alert("代码返回回来");
   				alert(data);
   			}) */
   		$("#btn_submit").click(function(){
   			$.ajax({
   			   type: "GET",
   			   url: "/Wisdom-Education/userManageHandle/addUser.action",
   			   data: $("#myForm4").serialize(),
   			   success: function(msg){
	   				$("#myModal4").css("display","none");
	   				// 每次添加前，表里面的内容清空
	   	   		  	$("#myForm4").find('input[type=text],select').each(function() {
	   	        			$(this).val('');
	   	   				 });
	   	   			$("#myForm4").find('input[type=hidden]').each(function() {
	        			$(this).val('-1');
	   			 	});
		   			$(".a14").trigger("click");//触发点击事件
   			   },
   			    error: function(XMLHttpRequest){
   			     alert( "Error: " + XMLHttpRequest.responseText);
   			   }
   			});
   		

   			/* $.get("/Wisdom-Education/userManageHandle/addUser.action",$("#myForm4").serialize(),function(data){

	   			$("#myModal4").css("display","none");
	   			$(".a14").trigger("click");//触发点击事件
				
   			}) */

   		})

   </script>
   
   <!-- 页面4（1）删除记录操作 -->
   <script type="text/javascript">
 	
 		function dele_user(e){
 			$.get("/Wisdom-Education/userManageHandle/deleteUser.action",{"delete":e},function(data){
 				// 触发点击事件
 				$(".a14").trigger("click");
 			})
 		}
   </script>
   <!-- 页面4（1）修改操作记录 -->
   <script type="text/javascript">
	 	function update41date(obj){
	 		var $allText = [];
	 		$(obj).parent().parent().children().each(function(i,e){
	 			if(Number(i) == Number(0)){
	 			// 第一个为val（）值，id值
	 				$allText.push($(this).children().first().val());
	 			}else{
	 				$allText.push($(this).text());
	 			}
	 		})
	 		// 得到所有数据,并减去最后一个元素
	 		$allText.pop();
	 		if($allText[3] == "女"){
	 			$allText[3] = "0";
	 		}else{
	 			$allText[3] = "1";
	 		}
	 		console.log($allText);
	 		
	 		//第四层菜单操作
	 		$("#myModal4").find(".form-control").each(function(i,e){
	 			
	 			console.log(e);
	 			$(this).val($allText[i]);
	 			//console.log($allText[i]);
	 		})
	 		$("#myModal4").css("display","block");
	 	// 每次添加前，表里面的内容
   		  
	 	}
	 
   </script>
   

		
		
	

		<!-- 第二层（2） -->
			<div class = "containright_two number2page" style="display: none">
			<!-- 参数信息 -->
			<div class = "containright_two_1">
				<h1 class = "canshu">菜单行为</h1>
				<ol class="breadcrumb">
					<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
					<li><a href="#">权限管理</a></li>
					<li class="active">菜单行为</li>
				</ol>
			</div>
			

			<!-- 具体内容 --><!-- 1 -->
			<div class="containright_two_2">
				
			
				
					<div style="font-weight:700">
                            
                            <span id="del_span"><button type="submit" onclick="bacthDelRole()" id="klk" class="btn btn-primary">删除</button></span>
                            <span id="add_span"><button type="submit" id="btn_add2222" class="btn btn-primary add_btn_1" >添加</button></span>
                            <br>
                            <br>
                        </div>
				
				
				
				<table id="example1" class="table table-bordered table-striped" >
					 <thead>
                            <tr>
                                <th>菜单名称</th>
                                <th>菜单详细</th>
                                <th>操作</th>
                            </tr>
                      </thead>
                      <tbody id = "tbody2">
     					
							<tr class="menu1 menu1_51">
								<td class="menuname">
									<span class="icon" style="display: inline;color: black;">▼</span><a onclick="menuTree(1,51)" href="javascript:void(0)">权限管理</a>
								</td>
								<td>权限管理</td>
							</tr>
						<!-- 这里插入数据 -->

                      </tbody>	
                 </table>

			</div>	
		
	
	</div>
	
	  <!-- 第2层，菜单分配按钮菜单 -->
	   <script type="text/javascript">
	   		function dis_cla(e){
	   				$("#myModalmodal4").css("display","block");
	   				console.log($("#myModalmodal4").find("input").val());
	   		}
	   </script>
	
	
	<!-- 第2层菜单弹出框 -->
		
<div class="modal fade in" id="myModal22" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" style="display: none;">
    <div class="modal-dialog" style="width:600px" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                <h4 class="modal-title" id="myModalLabel">新增</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" id="myForm22caidan" role="form" novalidate="novalidate">
                	<input type="hidden" class="form-control" id="menuIdipt" value="">
                	 <input type="hidden" class="form-control" id="createtimeipt" value="">
                    <div class="form-group">
                        <label class="col-sm-2 control-label">菜单名：</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control error" id="menunameipt" name="menuname" placeholder="请输入菜单名" aria-required="true" aria-invalid="true" aria-describedby="menunameipt-error">
                            <!--  <input type="hidden" id="menunameipt-hide" value="">-->
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <label class="col-sm-2 control-label">上级菜单：</label>
                        <div class="col-sm-10">
                        	
	                            <select name="type" class="form-control valid" id="fathermenuipt" style="width: auto;" aria-invalid="false">
	                                
	                                <!-- 这里添加数据 -->
	                            </select>    
                            
                            <input type="hidden" name = "hiddenname" id = "caidan2hidden">                        			 
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <label class="col-sm-2 control-label">菜单描述：</label>
                        <div class="col-sm-10">
                            <textarea type="text" class="form-control cla_t_area" rows="3" id="menudescipt" name="caidanmiaoshu"></textarea>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span>关闭</button>
                <button onclick="caidan2add_save(this)" type="button" id="btn_submit" class="btn btn-primary"><span class="glyphicon glyphicon-floppy-disk" aria-hidden="true"></span>保存</button>
            </div>
        </div>
    </div>
</div>


<!-- 菜单2添加操作里面的保存操作 -->
<script type="text/javascript">
	function caidan2add_save(obj){   
		
   			$.ajax({
   			   type: "POST",
   			  url: "/Wisdom-Education/menuManagerHandle/current_menuid_setchildrenmenu.action",
   			   data: $("#myForm22caidan").serialize(),
   			   success: function(msg){
	   				//alert("测试");
	   				$("#myModal22").css("display","none");
		   			$(".a12").trigger("click");//触发点击事件
   			   },
   			    error: function(XMLHttpRequest){
   			     alert( "Error: " + XMLHttpRequest.responseText);
   			   }
   			});
   			/* $.get("/Wisdom-Education/userManageHandle/addUser.action",$("#myForm4").serialize(),function(data){

	   			$("#myModal4").css("display","none");
	   			$(".a14").trigger("click");//触发点击事件
				
   			}) */

   	
	
	}


</script>



<!-- 第2层添加生成页面 -->
<script type="text/javascript">
	

	$("#btn_add2222").click(function(){
		
	
	//function add_num222(obj){
		$("#myModal22").css("display","block");
		

		$.ajax({
		        type: 'POST',
		        url: "/Wisdom-Education/menuManagerHandle/allmenu.action",
		        async: false,
		        data:{"1":"1"},
		        success: function (data) {		
			
			
			
			console.log("data："+data);
			//菜单2保存操作页面
			$("#fathermenuipt").empty();
			var d = [];
			// 添加名字标签
			d.push("<option value='-1'>★顶级菜单</option>")
			var dataJSON = data;
			for(var i=0;i<dataJSON.length;i++)
			{
				
				console.log(dataJSON[i]);
				var a = dataJSON[i];
				var c = Number(i) + Number(1);	
				d.push('<option  class="fucaidan" value="'+a["id"]+'">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;■'+a["sname"]+'</option>');
				
				// 这里再加一个ajax请求，得到当前标签的子菜单
				
				
				$("#caidan2hidden").attr("value",a["id"]);
				
				
				$.ajax({
			        type: 'POST',
			        url: "/Wisdom-Education/menuManagerHandle/parentMenu_childrenMenu.action",
			        async: false,
			        data:{"current_menu_id":$("#caidan2hidden").val()},
			        success: function (dataJSON) {	
						// 将返回的数据加入到当前标签下面
						//<tr><td><span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span><input type="hidden" class="checkSub" value="'+a["id"]+'" name="checkboxall2"><span onclick="menu_childrenmenu(this)" style="cursor:pointer" class="f_span">'+a["sname"]+'</span></td><td>'+a["sdesc"]+'</td><td><button type="button" onclick="update_role('+a["id"]+')" data-toggle="tooltip" data-placement="top" title="修改" class="btn_edit_c text-purple add_btn_1"><span class="glyphicon glyphicon-wrench" aria-hidden="true"></span></button><button type="button" onclick="del_role('+a["id"]+')" data-toggle="tooltip" data-placement="top" title="删除" class="btn_edit_c text-red glyphicon glyphicon-trash"></button><button onclick="role_menu_onclick(this)" type="button" data-toggle="tooltip" data-placement="top" title="分配权限" class="btn_edit_c text-blue fa caidan1fenpei"><span class="glyphicon glyphicon-new-window" aria-hidden="true"></span></button></td></tr>
						
						// 添加名字标签
						//d.push("<input type='hidden' name = 'memu_name' value='菜单管理'>")
						//$(obj).parent().parent().parent().find("tr[class='childrentr']").remove();
						//console.log($(obj).parent().parent().parent().html());
						
						for(var i=0;i<dataJSON.length;i++)
					{
						
						//console.log(dataJSON[i]);
						var a = dataJSON[i];
						var c = Number(i) + Number(1);	
						d.push('<option value="'+a["id"]+'">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;●'+a["sname"]+'</option>');
					}
						
					
			}
				})
				
				
				
			}
			
				for(i in d){
					$("#fathermenuipt").append(d[i]);
					}
			}
	
   			/* $.get("/Wisdom-Education/userManageHandle/addUser.action",$("#myForm4").serialize(),function(data){

	   			$("#myModal4").css("display","none");
	   			$(".a14").trigger("click");//触发点击事件
				
   			}) */

	})
   	
	})
</script>



<script type="text/javascript">
	// 添加里面的保存操作
	


</script>



	<!-- 第二层(3) -->	
		<div class = "containright_two number3page" style="display: none">
			<!-- 参数信息 -->
			<div class = "containright_two_1">
				<h1 class = "canshu">按钮管理</h1>
				<ol class="breadcrumb">
					<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
					<li><a href="#">系统配置</a></li>
					<li class="active">按钮信息</li>
				</ol>
			</div>
			

			<!-- 具体内容 --><!-- 1 --><!-- 先隐藏 -->
			<div class="containright_two_2" >
				<div class = "containright_two_2_1">
					<div style="font-weight:700">
                            
                            <span id="del_span"><button type="submit" onclick="bacthDelRole()" id="klk" class="btn btn-primary">删除</button></span>
                            <span id="add_span2"><button type="submit" id="btn_add2" onclick="update_role()" class="btn btn-primary tianjia" style="float: right;">添加</button></span>
                            <br>
                            <br>
                        </div>
				</div>
				
				<!-- 2 -->
				<div class="col-sm-6"><div class="dataTables_length" id="example1_length"><label>显示 <select name="example1_length" aria-controls="example1" class="form-control input-sm"><option value="10">10</option><option value="25">25</option><option value="50">50</option><option value="100">100</option></select> 项结果</label></div></div>
			
			
				<div class="row"><div class="col-sm-12"><table id="example1" class="table table-bordered table-striped dataTable no-footer" role="grid" aria-describedby="example1_info">
                            <thead>
                            	<tr role="row"><th id="th_check" class="sorting_disabled" rowspan="1" colspan="1"><input id="checkAll" type="checkbox"></th><th class="sorting_disabled actionname" rowspan="1" colspan="1">行为名称</th><th class="sorting_disabled" rowspan="1" colspan="1">行为描述</th><th rowspan="1" colspan="1">操作</th></tr>
                            </thead>
                            <tbody id = "tbody3">
								<!-- 这里插入数据 -->                               
                           </tbody>
                        </table><div id="example1_processing" class="dataTables_processing" style="display: none;">处理中...</div></div></div>
			
					<div class="row"><div class="col-sm-5"><div class="dataTables_info" id="example1_info" role="status" aria-live="polite">显示第 1 至 10 项结果，共 35 项</div></div><div class="col-sm-7"><div class="dataTables_paginate paging_simple_numbers" id="example1_paginate"><ul class="pagination"><li class="paginate_button previous disabled" id="example1_previous"><a href="#" aria-controls="example1" data-dt-idx="0" tabindex="0">上页</a></li><li class="paginate_button active"><a href="#" aria-controls="example1" data-dt-idx="1" tabindex="0">1</a></li><li class="paginate_button "><a href="#" aria-controls="example1" data-dt-idx="2" tabindex="0">2</a></li><li class="paginate_button "><a href="#" aria-controls="example1" data-dt-idx="3" tabindex="0">3</a></li><li class="paginate_button "><a href="#" aria-controls="example1" data-dt-idx="4" tabindex="0">4</a></li><li class="paginate_button next" id="example1_next"><a href="#" aria-controls="example1" data-dt-idx="5" tabindex="0">下页</a></li></ul></div></div></div>
		</div>
		</div>
		
		

<!-- 角色弹出框(3) -->
	
			<div class="modal fade in" id="myModal3" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" style="display: none;">
		    	<div class="modal-dialog" id="dialog_wedth" role="document">
		        <div class="modal-content">
		            <div class="modal-header">
		                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
		                <h4 class="modal-title" id="myModalLabel">新增</h4>
		            </div>
		            <div class="modal-body">
		                <form class="form-horizontal" id="myForm3" role="form" novalidate="novalidate">
		                	<input type="hidden" class="form-control" id="perId" value="">
		                	 <input type="hidden" class="form-control" id="createtime" value="">
		                    <div class="form-group">
		                        <label class="col-sm-2 control-label">按钮名称：</label>
		                        <div class="col-sm-10">
		                            <input type="text" class="form-control" id="pernameipt" name="SNAME" placeholder="请输入权限名">
		                            <input type="hidden" id="pernameipt-hide" value="">
		                        </div>
		                    </div>
		                    <div class="form-group">
		                        <label class="col-sm-2 control-label">按钮权限：</label>
		                        <div class="col-sm-10">
		                            <textarea type="text" class="form-control cla_t_area" rows="3" id="perdescipt" name="SDESC"></textarea>
		             	           </div>
		                    </div>
		                </form>
		            </div>
		
		            <div class="modal-footer">
		                <button type="button" class="btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span>关闭</button>
		                <button type="button" id="btn_submit3" class="btn btn-primary"><span class="glyphicon glyphicon-floppy-disk" aria-hidden="true"></span>保存</button>
		            </div>
		        </div>
		    </div>
</div>



 <!-- 第3层菜单保存操作,再将所有数据返回给前端 -->
   <script type="text/javascript">
   		
   		$("#btn_submit3").click(function(){
   			$.ajax({
   			   type: "POST",
   			   url: "/Wisdom-Education/buttonManagerHandle/addbutton.action",
   			   data: $("#myForm3").serialize(),
   			   success: function(msg){
	   				$("#myModal3").css("display","none");
	   				// 每次添加前，表里面的内容清空
	   	   		  	$("#myForm3").find('input[type=text],select').each(function() {
	   	        			$(this).val('');
	   	   				 });
	   	   			$("#myForm3").find('input[type=hidden]').each(function() {
	        			$(this).val('-1');
	   			 	});
	   	   			
		   			$(".a13").trigger("click");//触发点击事件
   			   },
   			    error: function(XMLHttpRequest){
   			     alert( "Error: " + XMLHttpRequest.responseText);
   			   }
   			});
   			/* $.get("/Wisdom-Education/userManageHandle/addUser.action",$("#myForm4").serialize(),function(data){

	   			$("#myModal4").css("display","none");
	   			$(".a14").trigger("click");//触发点击事件
				
   			}) */

   		})

   </script>
   
   <!-- 页面3删除记录操作 -->
   <script type="text/javascript">
 	
 		function del_button(e){
 			$.get("/Wisdom-Education/buttonManagerHandle/deletebutton.action",{"delete":e},function(data){
 				// 触发点击事件
 					$(".a13").trigger("click");//触发点击事件
 			})
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
                            <span id="add_span"><button type="submit" id="btn_add" class="btn btn-primary add_btn_1" >添加</button></span>
                            <br>
                            <br>
                        </div>
				</div>
				
				<!-- 2 -->
				<div class="col-sm-6"><div class="dataTables_length" id="example1_length"><label>显示 <select name="example1_length" aria-controls="example1" class="form-control input-sm"><option value="10">10</option><option value="25">25</option><option value="50">50</option><option value="100">100</option></select> 项结果</label></div></div>
			
			
			<!-- 3 (这里需要手动隐藏)-->
				<div class="row"><div class="col-sm-12"><table id="example1" class="table table-bordered table-striped dataTable no-footer" role="grid" aria-describedby="example1_info"  >
                           <form >
	                            <thead>
		                            <tr role="row"><th id="th_check" class="sorting_disabled" rowspan="1" colspan="1"><input id="checkAll" type="checkbox"></th><th class="sorting_disabled rolename" rowspan="1" colspan="1">角色名</th><th class="sorting_disabled" rowspan="1" colspan="1">创建时间</th><th rowspan="1" colspan="1">操作</th></tr>
	                            </thead>
	                            <tbody id = "diertbody">
	                            	<!-- 这里插入 -->
								</tbody>
							</form>                        
				</div>
			
		<div>
		</div>
		
			
		</div>
	</div>
	
	
	
	<!-- 角色弹出框(1) -->
	
			<div class="modal fade in" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" style="display: none;">
		    	<div class="modal-dialog" id="dialog_wedth" role="document">
		        <div class="modal-content">
		            <div class="modal-header">
		                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
		                <h4 class="modal-title" id="myModalLabel">新增</h4>
		                <!-- 这里添加id值 (默认为-1)-->
		                <input type="hidden" name = "id" value = "-1">
		            </div>
		            <div class="modal-body">
		                <form class="form-horizontal" id="myForm2-1" role="form" novalidate="novalidate">
		                	
		                    <div class="form-group">
		                        <label class="col-sm-2 control-label">权限名：</label>
		                        <div class="col-sm-10">
		                            <input type="text" class="form-control" id="pernameipt" name="SNAME" placeholder="请输入权限名">
		                            
		                        </div>
		                    </div>
		                    <div class="form-group">
		                        <label class="col-sm-2 control-label">权限描述：</label>
		                        <div class="col-sm-10">
		                            <textarea type="text" class="form-control cla_t_area" rows="3" id="perdescipt" name="SDESC"></textarea>
		             	           </div>
		                    </div>
		                </form>
		            </div>
		
		            <div class="modal-footer">
		                <button type="button" class="btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span>关闭</button>
		                <button type="button" id="btn_submit2" class="btn btn-primary"><span class="glyphicon glyphicon-floppy-disk save1-1" aria-hidden="true"></span>保存</button>
		            </div>
		        </div>
		    </div>
</div>


	<!-- 菜单弹出1-2 -->
	<div class="modal fade in" id="myModal5" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" style="display: none;">
    <div class="modal-dialog" style="width:650px" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                <h4 class="modal-title" id="myModalLabel1">分配权限</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" role="form">
                <input type="hidden" class="form-control" id="assin_permission_roleId" value="7">
                    <div class="form-group">
                        <label class="col-sm-2 control-label">角色名：</label>
                        <div class="col-sm-10">
                            <input disabled="true" type="text" class="form-control" id="assin_permission_rolename" placeholder="角色名称">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">分配权限：</label>
                    </div>
                    <div class="form-group">

                        <div id="menu_div">
                            <ul class="menuTree accordion">
                                <li class="parentMenu">
                                    <label><input type="checkbox" class="chkAll2"><a href="javascript:void('0');" onclick="ul_show(1)"> 权限</a></label>
                                    <ul class="childMenu ul_1">
                                       
	                            			
		                            			
			                                        <li><label><input type="checkbox" value="6" class="checkSub2">代码测试权限</label></li>
                                        		
			                                        <li><label><input type="checkbox" value="5" class="checkSub2">咨询师权限</label></li>
                                        		
			                                        <li><label><input type="checkbox" value="4" class="checkSub2">测试教务角色权限</label></li>
                                        		
			                                        <li><label><input type="checkbox" value="3" class="checkSub2">教务角色</label></li>
                                        		
			                                        <li><label><input type="checkbox" value="2" class="checkSub2">教师权限</label></li>
                                        		
			                                        <li><label><input type="checkbox" value="1" class="checkSub2">管理员权限</label></li>
                                        		
                                        	
                                        
                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </div>
                </form>
            </div>

            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span>关闭</button>
                <button type="button" id="btn_submit0" onclick="saveAssinPermission()" class="btn btn-primary" data-dismiss="modal"><span class="glyphicon glyphicon-floppy-disk" aria-hidden="true"></span>保存</button>
            </div>
        </div>
    </div>
</div>


</body>



 <!-- 第1层菜单保存操作,再将所有数据返回给前端 -->
   <script type="text/javascript">
   		
   	/* 	$("#btn_submit").click(function(){
   			$.post("/Wisdom-Education/userManageHandle/addUser.action", $("#myForm4").serialize(),function(data){
   				alert("代码返回回来");
   				alert(data);
   			}) */
   		$("#btn_submit2").click(function(){
   			$.ajax({
   			   type: "POST",
   			   url: "/Wisdom-Education/roleManagerHandle/addrole.action",
   			   data: $("#myForm2-1").serialize(),
   			   success: function(msg){
	   				$("#myModal").css("display","none");
	   				// 每次添加前，表里面的内容清空
	   	   		  	$("#myForm2-1").find('input[type=text],select').each(function() {
	   	        			$(this).val('');
	   	   				 });
	   	   			$("#myForm2-1").find('input[type=hidden]').each(function() {
	        			$(this).val('-1');
	   			 	});
		   			$(".a11").trigger("click");//触发点击事件
   			   },
   			    error: function(XMLHttpRequest){
   			     alert( "Error: " + XMLHttpRequest.responseText);
   			   }
   			});
   			/* $.get("/Wisdom-Education/userManageHandle/addUser.action",$("#myForm4").serialize(),function(data){

	   			$("#myModal4").css("display","none");
	   			$(".a14").trigger("click");//触发点击事件
				
   			}) */

   		})

   </script>
   
   <!-- 页面1删除记录操作 -->
   <script type="text/javascript">
 	
 		function del_role(e){
 			$.get("/Wisdom-Education/roleManagerHandle/deleteRole.action",{"delete":e},function(data){
 				// 触发点击事件
 					$(".a11").trigger("click");//触发点击事件
 			})
 		}
   </script>
   <!-- 页面1修改操作记录 -->
   <script type="text/javascript">
	 	function update_role(obj){
	 		var $allText = [];
	 		console.log($(obj).parent().parent().find("input,textarea"))
	 		$(obj).parent().parent().find("input,textarea").each(function(i,e){
	 			if(Number(i) == Number(0)){
	 			// 第一个为val（）值，id值
	 				$allText.push($(this).children().first().val());
	 			}else{
	 				$allText.push($(this).text());
	 			}
	 		})
	 		
	 		
	 		console.log($allText);
	 		
	 		//第1层菜单操作
	 		$("#myModal").find(".form-control").each(function(i,e){
	 			console.log(e);
	 			$(this).val($allText[i]);
	 			//console.log($allText[i]);
	 		})
	 		$("#myModal").css("display","block");
	 	// 每次添加前，表里面的内容
   		  
	 	}
	 
   </script>
  



<!-- 触发弹出页面，菜单操作(页面1) -->
<script type="text/javascript">
	$(function(){
		$(".add_btn_1").click(function(){	
			
			$("#myModal").css("display","block");
			
		})
		
		$("#diyiceng").click(function(){
			
			$("#myModal").css("display","block");
			
		})
		
		
		$(".btn-default").click(function(){
			//alert("deshi");
			$(this).parent().parent().parent().parent().css("display","none");
			
			//.attr("display","none");
		})
		
		
		$("#btn_add4").click(function(){
			$("#myModal4").css("display","block");
		})
		
		
		// 触发菜单1的分配权限
		$(".caidan1fenpei").click(function(){
			$("#myModal5").css("display","block");
		})
	})
</script>

<!--  触发弹出页面操作(页面2菜单) -->

<script type="text/javascript">
	$(function(){
		$(".caidanquxian").click(function(){
			//alert("测试");
			$("#caidan1").css("display","block");
		})
	})
		
</script>

<!-- 按钮模块弹出页面 -->
<script type="text/javascript">
	$(function(){
		$(".tianjia").click(function(){
			$("#myModal3").css("display","block");
		})
	})
	
</script>


<!-- 鼠标在上面和不在上面触发事件 -->
<script type="text/javascript">

	$(function(){
		
		$(".treeview").mouseover(function(){
			$(this).css("background-color","#1E282C");
			//$("span").css("color","white");
			$(this).find("span").css("color","white");
		})
		$(".treeview").mouseout(function(){
			$(this).css("background-color","#222d32")
			$(this).find("span").css("color","#b8c7ce");
		})
		
		// 子菜单
		$(".bandcla").mouseover(function(){
		
			//$("span").css("color","white");
			$(this).find(".a1").css("color","white");
		})
		$(".bandcla").mouseout(function(){
			
			$(this).find(".a1").css("color","#8aa4af");
		})
		
	})
	
	
	// 点击触发子菜单
	$(function(){
		$(".a_treeview").click(function(){
		
			//消除其他子菜单和ok属性
			$(this).parent().parent().siblings().removeAttr("ok");
			$(this).parent().parent().siblings().find(".ul").css("display","none");
			$(this).parent().parent().siblings().find(".glyphicon").removeClass("glyphicon-menu-down");
			$(this).parent().parent().siblings().find(".glyphicon").addClass("glyphicon-menu-left");
			//当前子菜单展开
			//$(this).find("ul").css("display","block");
			
			if(parseInt($(this).parent().attr("ok")) == parseInt(1)) {
				$(this).parent().removeAttr("ok");
				$(this).parent().find("ul").slideUp("slow");
				$(this).parent().find(".glyphicon").removeClass("glyphicon-menu-down");
				$(this).parent().find(".glyphicon").addClass("glyphicon-menu-left");
			}else{
				$(this).parent().attr({"ok":"1"});
				$(this).parent().find("ul").slideDown("slow");
				$(this).parent().find(".glyphicon").removeClass("glyphicon-menu-left");
				$(this).parent().find(".glyphicon").addClass("glyphicon-menu-down");
	
			}
	
		})
		
	})
	
	
</script>


<script type="text/javascript">
	// 点击生产页面
	$(".a11").click(function(){
		
		$(".number2page").css("display","none");
		$(".number1page").css("display", "block");
		$(".number3page").css("display","none");
		$("#number4page").css("display","none");
		
		
		// 清空empty标签上的数据
		$("#diertbody").empty();
		// 得到所有用户信息
		$.get("/Wisdom-Education/roleManagerHandle/selectRole.action",{"1":"1"},function(data){
			
		
		//$(".a14").trigger("click")；触发点击事件
			
		var d = [];
		d.push("<input type='hidden' name = 'memu_name' value='角色管理'>")
		var dataJSON = data;
		for(var i=0;i<dataJSON.length;i++)
		{
			console.log(dataJSON[i]);
			var a = dataJSON[i];
			var c = Number(i) + Number(1);
			d.push('<tr role="row" class="odd"><td><input type="checkbox" class="checkSub" value="'+a["id"]+'" name="checkboxall2"></td><td class=" rolename">'+a["sname"]+'</td><td><div>'+a["createtime"]+'</div></td><td><button type="button" onclick="update_role('+a["id"]+')" data-toggle="tooltip" data-placement="top" title="修改" class="btn_edit_c text-purple add_btn_1"><span class="glyphicon glyphicon-wrench" aria-hidden="true"></span></button><button type="button" onclick="del_role('+a["id"]+')" data-toggle="tooltip" data-placement="top" title="删除" class="btn_edit_c text-red glyphicon glyphicon-trash"></button><button onclick="role_menu_onclick(this)" type="button" data-toggle="tooltip" data-placement="top" title="分配权限" class="btn_edit_c text-blue fa caidan1fenpei"><span class="glyphicon glyphicon-new-window" aria-hidden="true"></span></button></td></tr>')
			
			//d.push('<tr role="row" class="odd"><td><input type="checkbox" class="checkSub" name = "checkboxall" value="'+a["id"]+'"></td><td class=" rolename">'+a["sname"]+'</td><td><div>'+a["createtime"]+'</div></td><td><button type="button" onclick="update_role('+a["id"]+')" data-toggle="tooltip" data-placement="top" title="修改" class="btn_edit_c text-purple add_btn_1"><span class="glyphicon glyphicon-wrench" aria-hidden="true"></span></button><button type="button" onclick="del_role('+a["id"]+')" data-toggle="tooltip" data-placement="top" title="删除" class="btn_edit_c text-red glyphicon glyphicon-trash"></button><button onclick="role_menu_onclick(this)" type="button" data-toggle="tooltip" data-placement="top" title="分配权限" class="btn_edit_c text-blue fa caidan1fenpei"><span class="glyphicon glyphicon-new-window" aria-hidden="true"></span></button></td></tr>')
		}
		for(i in d){
			$("#diertbody").append(d[i]);
			}
		})
	})
	$(".a12").click(function(){
		$(".number2page").css("display", "block");
		$(".number1page").css("display","none");
		$(".number3page").css("display","none");
		$("#number4page").css("display","none");
		

		// 得到所有用户信息(改成得到所有第一层对象)
		$.get("/Wisdom-Education/menuManagerHandle/allmenu.action",{"1":"1"},function(data){
			
		
			//$(".a14").trigger("click")；触发点击事件
			$("#tbody2").empty();
			var d = [];
			// 添加名字标签
			d.push("<input type='hidden' name = 'memu_name' value='菜单管理'>")
			var dataJSON = data;
			for(var i=0;i<dataJSON.length;i++)
			{
				
				console.log(dataJSON[i]);
				var a = dataJSON[i];
				var c = Number(i) + Number(1);	
				d.push('<tr><td><span style="color:black;" class="glyphicon glyphicon-menu-down" aria-hidden="true"></span><input type="hidden" class="checkSub" value="'+a["id"]+'" name="checkboxall2"><span onclick="menu_childrenmenu(this)" style="cursor:pointer" class="f_span">'+a["sname"]+'</span></td><td>'+a["sdesc"]+'</td><td><button type="button" onclick="update_role('+a["id"]+')" data-toggle="tooltip" data-placement="top" title="修改" class="btn_edit_c text-purple add_btn_1"><span class="glyphicon glyphicon-wrench" aria-hidden="true"></span></button><button type="button" onclick="del_role('+a["id"]+')" data-toggle="tooltip" data-placement="top" title="删除" class="btn_edit_c text-red glyphicon glyphicon-trash"></button></td></tr>');
			}
			
			for(i in d){
				$("#tbody2").append(d[i]);
				}
			})
	})
	
	// 点击菜单管理下的菜单触发事件，得到每个菜单的字菜单
	function menu_childrenmenu(obj){
		var $current_menu_id = $(obj).parent().find("input[type='hidden']").first().val();
		
		$.ajax({
	        type: 'POST',
	        url: "/Wisdom-Education/menuManagerHandle/parentMenu_childrenMenu.action",
	        async: false,
	        data:{"current_menu_id":$current_menu_id},
	        success: function (dataJSON) {	
				// 将返回的数据加入到当前标签下面
				//<tr><td><span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span><input type="hidden" class="checkSub" value="'+a["id"]+'" name="checkboxall2"><span onclick="menu_childrenmenu(this)" style="cursor:pointer" class="f_span">'+a["sname"]+'</span></td><td>'+a["sdesc"]+'</td><td><button type="button" onclick="update_role('+a["id"]+')" data-toggle="tooltip" data-placement="top" title="修改" class="btn_edit_c text-purple add_btn_1"><span class="glyphicon glyphicon-wrench" aria-hidden="true"></span></button><button type="button" onclick="del_role('+a["id"]+')" data-toggle="tooltip" data-placement="top" title="删除" class="btn_edit_c text-red glyphicon glyphicon-trash"></button><button onclick="role_menu_onclick(this)" type="button" data-toggle="tooltip" data-placement="top" title="分配权限" class="btn_edit_c text-blue fa caidan1fenpei"><span class="glyphicon glyphicon-new-window" aria-hidden="true"></span></button></td></tr>
				var d = [];
				// 添加名字标签
				//d.push("<input type='hidden' name = 'memu_name' value='菜单管理'>")
				$(obj).parent().parent().parent().find("tr[class='childrentr']").remove();
				//console.log($(obj).parent().parent().parent().html());
				
				for(var i=0;i<dataJSON.length;i++)
			{
				
				//console.log(dataJSON[i]);
				var a = dataJSON[i];
				var c = Number(i) + Number(1);	
				d.push('<tr class = "childrentr"><td><span class="glyphicon glyphicon-menu-right" aria-hidden="true"></span><input type="hidden" class="checkSub" value="'+a["id"]+'" name="checkboxall2"> '+a["sname"]+'</span></td><td>'+a["sname"]+'</td><td><button type="button" onclick="update_role('+a["id"]+')" data-toggle="tooltip" data-placement="top" title="修改" class="btn_edit_c text-purple add_btn_1"><span class="glyphicon glyphicon-wrench" aria-hidden="true"></span></button><button type="button" onclick="del_role('+a["id"]+')" data-toggle="tooltip" data-placement="top" title="删除" class="btn_edit_c text-red glyphicon glyphicon-trash"></button><button onclick="role_menu_onclick(this)" type="button" data-toggle="tooltip" data-placement="top" title="分配权限" class="btn_edit_c text-blue fa caidan1fenpei"><span class="glyphicon glyphicon-new-window" aria-hidden="true"></span></button></td></tr>');
			}
				
				
				
				for(i in d){
					$(obj).parent().parent().after(d[i]);
				}
				
				
				
				
	}
		})
	}
	
	
	
	
	$(".a13").click(function(){
		$(".number3page").css("display","block");
		$(".number1page").css("display","none");
		$(".number2page").css("display","none");
		$("#number4page").css("display","none");
		
		// 插入数据的id值：tbody3
		// 清空empty标签上的数据
		$("#tbody3").empty();
		// 得到所有用户信息
		$.get("/Wisdom-Education/buttonManagerHandle/allbutton.action",{"1":"1"},function(data){
			
			console.log(data);
			var d = [];
			
			var dataJSON = data;
			d.push("<input type='hidden' name = 'memu_name' value='按钮管理'>")
			for(var i=0;i<dataJSON.length;i++)
			{
			
				var a = dataJSON[i];
				var c = Number(i) + Number(1);
					d.push('<tr role="row" class="odd"><td><input type="checkbox" class="checkSub" value="'+a["id"]+'"></td><td class=" rolename">'+a["sname"]+'</td><td>'+a["sname"]+'</td><td><button type="button"  data-toggle="tooltip" data-placement="top" title="修改" class="btn_edit_c text-purple fa ceshi22 tianjia"><span class="glyphicon glyphicon-wrench" aria-hidden="true"></span></button><button type="button" onclick="role_menu_onclick('+a["id"]+')" data-toggle="tooltip" data-placement="top" title="删除" class="btn_edit_c text-red glyphicon glyphicon-trash"></button></td></tr>')
			}
			
			for(i in d){
				$("#tbody3").append(d[i]);
				}

			})

	})
	
	$(".a14").click(function(){
		
		$("#number4page").css("display","block");
		$(".number3page").css("display","none");
		$(".number1page").css("display","none");
		$(".number2page").css("display","none");
		
		// 清空empty标签上的数据
		$("#tbdoy4-1").empty();
		// 得到所有用户信息
		$.get("/Wisdom-Education/userManageHandle/allUser.action",{"1":"1"},function(data){
			
		
		var d = [];
		
		d.push("<input type='hidden' name = 'memu_name' value='用户管理'>")
		var dataJSON = data;
		for(var i=0;i<dataJSON.length;i++)
		{
		
			var a = dataJSON[i];
			var c = Number(i) + Number(1);
			if( Number(a["sEX"]) ==  Number(1)){
				d.push('<tr role="row" class="odd"><td class="text-center"><input type="checkbox" class="checkchild" name="checkboxall2" value="'+a["id"]+'"></td><td>'+a["sname"]+'</td><td hidden>'+a["spasswd"]+'</td><td>男</td><td>'+a["mobilephone"]+'</td><td>'+a["semail"]+'</td><td><div>'+a["dlastlogintime"]+'</div></td><td class=" text-center"><button type="button" onclick="update41date(this)" data-toggle="tooltip" data-placement="top" title="修改" class="btn_edit_c text-purple add_btn_1"><span class="glyphicon glyphicon-wrench" aria-hidden="true"></span></button><button type="button" onclick="dele_user('+a["id"]+')" data-toggle="tooltip" data-placement="top" title="删除" class="btn_edit_c text-red glyphicon glyphicon-trash"></button><button onclick="role_menu_onclick(this)" type="button" data-toggle="tooltip" data-placement="top" title="分配权限" class="btn_edit_c text-blue fa caidan1fenpei"><span class="glyphicon glyphicon-new-window" aria-hidden="true"></span></button></td></td></tr>')
			}else{
				d.push('<tr role="row" class="odd"><td class="text-center"><input type="checkbox" class="checkchild" name="checkboxall2" value="'+a["id"]+'"></td><td>'+a["sname"]+'</td><td hidden>'+a["spasswd"]+'</td><td>女</td><td>'+a["mobilephone"]+'</td><td>'+a["semail"]+'</td><td><div>'+a["dlastlogintime"]+'</div></td><td class=" text-center"><button type="button" onclick="update41date(this)" data-toggle="tooltip" data-placement="top" title="修改" class="btn_edit_c text-purple add_btn_1"><span class="glyphicon glyphicon-wrench" aria-hidden="true"></span></button><button type="button" onclick="dele_user('+a["id"]+')" data-toggle="tooltip" data-placement="top" title="删除" class="btn_edit_c text-red glyphicon glyphicon-trash"></button><button onclick="role_menu_onclick(this)" type="button" data-toggle="tooltip" data-placement="top" title="分配权限" class="btn_edit_c text-blue fa caidan1fenpei"><span class="glyphicon glyphicon-new-window" aria-hidden="true"></span></button></td></td></tr>')
			}
		}
		
		
		for(i in d){
			$("#tbdoy4-1").append(d[i]);
			}
		
			
		})
		

		
	
		
		
	})
	
	
	



</script>


</html>