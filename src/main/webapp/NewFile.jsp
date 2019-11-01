<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

	<script  src="/Wisdom-Education/js/bootstrap.js"></script>
</head>
<body>


	<section class="sidebar" style="height: auto;">
      <ul class="sidebar-menu">
       
        <li class="treeview">
          <a href="#">
            <i class="fa fa-dashboard" id="pzinfo"></i> <span>系统配置</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu" style="display: none;">
          
              <li class="bandcla"><a href="javascript:view('/system/toSystemDirect');"><i class="fa fa-circle-o"></i> 参数信息</a></li>
           
           
              <li class="bandcla"><a href="javascript:view('/image/uploadImageForward')"><i class="fa fa-circle-o"></i> 资料配置</a></li>
            
            
			  <li class="bandcla"><a href="javascript:view('/dbBackup/findBackUpInfoforWord')"><i class="fa fa-circle-o"></i> 数据库备份</a></li>
			
          </ul>
        </li>
       
       
        <li class="treeview">
          <a href="#">
            <i class="fa fa-files-o"></i>
            <span>用户管理</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
           
              <li class="bandcla"><a href="javascript:view('/user/userpage?usertype=1')"><i class="fa fa-circle-o"></i> 管理员管理</a></li>
            
            
            <li class="bandcla"><a href="javascript:view('/user/userpage?usertype=3')"><i class="fa fa-circle-o"></i> 学生管理</a></li>
            
            
            <li class="bandcla"><a href="javascript:view('/user/userpage?usertype=2')"><i class="fa fa-circle-o"></i> 教师管理</a></li>
            
           
            <li class="bandcla"><a href="javascript:view('/user/userpage?usertype=4')"><i class="fa fa-circle-o"></i> 咨询师管理</a></li>
            
          </ul>
        </li>
      
       
        <li class="treeview active">
          <a href="#">
            <i class="fa fa-unlock"></i>
            <span>权限管理</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu menu-open" style="display: block;">
          
            <li class="bandcla"><a href="javascript:view('/group/toGroup')"><i class="fa fa-circle-o"></i> 用户组管理</a></li>
          
          
            <li class="bandcla"><a href="javascript:view('/role/toRole')"><i class="fa fa-circle-o"></i> 角色管理</a></li>
          
          
            <li class="bandcla"><a href="javascript:view('/permission/toPermission')"><i class="fa fa-circle-o"></i> 角色权限</a></li>
          
           
            <li class="bandcla"><a href="javascript:view('/menu/toMenuAction')"><i class="fa fa-circle-o"></i> 菜单行为</a></li>
          
          
            <li class="bandcla"><a href="javascript:view('/menu/toMenu')"><i class="fa fa-circle-o"></i> 菜单管理</a></li>
          
          
            <li class="bandcla"><a href="javascript:view('/action/toAction')"><i class="fa fa-circle-o"></i> 行为管理</a></li>
          
          
          </ul>
        </li>
       
        
        <li class="treeview">
          <a href="#">
            <i class="fa fa-laptop"></i>
            <span>组织机构</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
          
            <li class="bandcla"><a href="javascript:view('/institu/institu')"><i class="fa fa-circle-o"></i> 机构列表</a></li>
          
          
            <li class="bandcla"><a href="javascript:view('/institu/childInstitu')"><i class="fa fa-circle-o"></i> 分支机构</a></li>
          
          </ul>
        </li>
       
       
        <li class="treeview">
          <a href="#">
            <i class="fa fa-edit"></i> <span>资源管理</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
           
            <li class="bandcla"><a href="javascript:view('/type/toType')"><i class="fa fa-circle-o"></i> 资源类型</a></li>
           
           
            <li class="bandcla"><a href="javascript:view('/resouManage/toResouManage')"><i class="fa fa-circle-o"></i> 资源浏览</a></li>
           
          </ul>
        </li>
       
       
        <li class="treeview">
          <a href="#">
            <i class="fa fa-table"></i> <span>培养方案</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
          
            <li class="bandcla"><a href="javascript:view('/plan/toPlan')"><i class="fa fa-circle-o"></i> 方案列表</a></li>
          
          
            <li class="bandcla"><a href="javascript:view('/plan/toCourse')"><i class="fa fa-circle-o"></i> 课程列表</a></li>
          
          
            <li class="bandcla"><a href="javascript:view('/courseItem/toCourseItem')"><i class="fa fa-circle-o"></i> 课程分类</a></li>
          
          </ul>
        </li>
       
       
        <li class="treeview">
          <a href="#">
            <i class="fa fa-folder"></i> <span>班级管理</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
          
            <li class="bandcla"><a href="javascript:view('/professional/toProfe')"><i class="fa fa-circle-o"></i> 专业方向</a></li>
          
           
            <li class="bandcla"><a href="javascript:view('/classlist/toClassList')"><i class="fa fa-circle-o"></i> 班级列表</a></li>
           
            <!--<li class="bandcla"><a href="javascript:view('classmanage/classresource.html')"><i class="fa fa-circle-o"></i> 班级资源</a></li>-->
            
            <li class="bandcla"><a href="javascript:view('/classproblem/toClassProblem')"><i class="fa fa-circle-o"></i> 班级问题</a></li>
            
            
            <li class="bandcla"><a href="javascript:view('/homework/toHomework')"><i class="fa fa-circle-o"></i> 布置作业</a></li>
          
             
            <li class="bandcla"><a href="javascript:view('/rate/toRate')"><i class="fa fa-circle-o"></i> 学习进度</a></li>
            
          </ul>
        </li>
       
        
        <li class="treeview">
          <a href="#">
            <i class="fa fa-tumblr"></i> <span>授课管理</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu" style="display: none;">
           
            <li class="bandcla"><a href="javascript:view('/teaching/toTeaching')"><i class="fa fa-circle-o"></i> 课堂教学</a></li>
           
          </ul>
        </li>
       
       
        <li class="treeview">
          <a href="#">
            <i class="fa fa-vimeo-square"></i> <span>通知公告</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
          
            <li class="bandcla"><a href="javascript:view('/annount/toAnnount')"><i class="fa fa-circle-o"></i> 发布公告</a></li>
          
          
            <li class="bandcla"><a href="javascript:view('/annount/toAnnountList')"><i class="fa fa-circle-o"></i> 公告列表</a></li>
          
          
             <li class="bandcla"><a href="javascript:view('/annount/toNewInfoList')"><i class="fa fa-circle-o"></i> 新闻资讯</a></li>
          
          </ul>
        </li>
       
       
        <li class="treeview">
          <a href="#">
            <i class="fa fa-reorder"></i> <span>考试管理</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
          
            <li class="bandcla"><a href="javascript:view('/paper/toPaperQuesb')"><i class="fa fa-circle-o"></i> 题库管理</a></li>
          
          
            <li class="bandcla"><a href="javascript:view('/paper/toPaper')"><i class="fa fa-circle-o"></i> 试卷管理</a></li>
          
         
            <li class="bandcla"><a href="javascript:view('/paper/toStudentpaperscore')"><i class="fa fa-circle-o"></i> 考试汇总</a></li>
         
          </ul>
        </li>
      
       
        <li class="treeview">
          <a href="#">
            <i class="fa  fa-male"></i> <span>考评管理</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
          
            <li class="bandcla"><a href="javascript:view('/appra/toAppra')"><i class="fa fa-circle-o"></i> 考评选项</a></li>
          
          
            <li class="bandcla"><a href="javascript:view('/appra/toTemplate')"><i class="fa fa-circle-o"></i> 考评模板</a></li>
          
          
            <li class="bandcla"><a href="javascript:view('/appra/toTeacherAppra')"><i class="fa fa-circle-o"></i> 教师考评</a></li>
          
          </ul>
        </li>
      
      
        <li class="treeview">
          <a href="#">
            <i class="fa  fa-dribbble"></i> <span>数据分析</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
              
                  <li class="bandcla"><a href="javascript:view('/classReport/toClassReport')"><i class="fa fa-circle-o"></i> 班级统计</a></li>
              
              
                  <li class="bandcla"><a href="javascript:view('/videoRecord/toVideoRecord')"><i class="fa fa-circle-o"></i> 学生观看记录</a></li>
              
          </ul>
        </li>
      
      
      
        <li class="treeview">
          <a href="#">
            <i class="fa  fa-dribbble"></i> <span>咨询管理</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
             
            <li class="bandcla"><a href="javascript:view('/advice/findAdviceInfo')"><i class="fa fa-circle-o"></i> 建议咨询</a></li>
              
          </ul>
        </li>
      
      
      
        <li class="treeview">
          <a href="#">
            <i class="fa  fa-dribbble"></i> <span>操作日志</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
             
            <li class="bandcla"><a href="javascript:view('/syslog/toSyslogList')"><i class="fa fa-circle-o"></i> 日志列表</a></li>
              
          </ul>
        </li>
      
      
      
       <li class="treeview">
          <a href="#">
            <i class="fa  fa-dribbble"></i> <span>评鉴管理</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
             
            <li class="bandcla"><a href="javascript:view('/evat/findEvationInfo')"><i class="fa fa-circle-o"></i>评鉴设置</a></li>
              
          </ul>
        </li>
      
      
      
       <li class="treeview">
          <a href="#">
            <i class="fa  fa-dribbble"></i> <span>意向客户</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
         
          
            <li class="bandcla"><a href="javascript:view('/client/findClient')"><i class="fa fa-circle-o"></i>客户列表</a></li>
          
          
            <li class="bandcla"><a href="javascript:view('/client/clientChart')"><i class="fa fa-circle-o"></i>数据报表</a></li>
           
          
           
            <!-- <li class="bandcla"><a href="javascript:view('/client/clientSeat')"><i class="fa fa-circle-o"></i>座位选择</a></li> -->
         
         <!-- <li class="bandcla"><a href="javascript:view('/client/toSalesPage')"><i class="fa fa-circle-o"></i>数据报表2</a></li> -->
         
          </ul>
        </li>
       
      
      </ul>
    </section>

</body>
</html>