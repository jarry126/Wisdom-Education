package cn.hd.control;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.hd.pojo.Menu;
import cn.hd.service.AllListService;
import cn.hd.service.ButtonService;
import cn.hd.service.MenuService;
import cn.hd.service.UserService;

/**
 * 权限菜单web层
 * @author Administrator
 *
 */
@Controller
@RequestMapping("/allLImitManagerHandle")
public class AllLImitManagerHandle {
	@Resource
	private AllListService allListService;
	@Resource
	private MenuService menuService;
	@Resource
	private ButtonService buttonService;
	@Resource
	private UserService userService;
	
	//提交 权限页面
	@ResponseBody
	@RequestMapping("/limitManagerHandle")
	public String limitManagerHandle(HttpServletRequest request,HttpServletResponse response){
		System.out.println("managerName:"+request.getParameter("managerName"));
		//角色-菜单权限
		// managerName 当前管理名字。current_click_id 点击标签产生的id值
		// 判断当前传过来的值是添加还是修改.
		if("角色管理".equals(request.getParameter("managerName"))){
			System.out.println("角色管理提交权限.....");
			System.out.println("得到menuid："+request.getParameter("menuid"));
			System.out.println("得到buttonAll："+request.getParameter("buttonAll"));
			System.out.println("得到roleid："+request.getParameter("roleid"));
			allListService.role_menu_limit(request, response);
			return "1";
		}else if ("菜单管理".equals(request.getParameter("managerName"))) {
			System.out.println("菜单管理提交权限.....");
			allListService.menu_button_limit(request,response);
			return "2";
		}else if ("按钮管理".equals(request.getParameter("managerName"))) {
			System.out.println("按钮管理提交权限.....");
			return "3";
		}else if("用户管理".equals(request.getParameter("managerName"))) {
			System.out.println("用户管理提交权限.....");
			allListService.user_role_limit(request,response);
			return "4";
		}else{
			System.out.println("权限提交出现错误");
			return null;
		}
	}
	
	//权限页面生成, 4个权限页面
	@ResponseBody
	@RequestMapping("/createLimitPage")
	public List createLimitPage(HttpServletRequest request,HttpServletResponse response){
		System.out.println("显示管理名字："+request.getParameter("managerName"));
		if("角色管理".equals(request.getParameter("managerName"))){
			System.out.println("角色管理开始执行.....");
			return menuService.role_menuService(request);
		}else if ("菜单管理".equals(request.getParameter("managerName"))) {
			System.out.println("菜单管理开始执行.....");
			return buttonService.menu_buttonService(request);
		}else if ("用户管理".equals(request.getParameter("managerName"))) {
			System.out.println("用户管理开始执行.....");
			return userService.user_roleService(request);
		}else if("按钮管理".equals(request.getParameter("managerName"))) {
			System.out.println("按钮管理开始执行.....");
			return null;
		}else{
			System.out.println("报出错误");
			return null;
		}

	}
	
	// 权限-特殊，角色管理权限-按钮 
	@ResponseBody
	@RequestMapping("/roleMenuButton")
	public List roleMenuButton(HttpServletRequest request,HttpServletResponse response){
		return menuService.roleMenuButtonService(request, response);

	}
}
