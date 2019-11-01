package cn.hd.control;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.hd.pojo.Menu;
import cn.hd.service.MenuService;

@Controller
@RequestMapping("/menuManagerHandle")
public class MenuManagerHandle {
	@Resource
	private MenuService menuService;
	
	// 得到所有菜单集合，菜单集合里面加入Checked，代表当前角色选中当前菜单
	@ResponseBody
	@RequestMapping("/allmenu_role")
	public List<Menu> allmenu_role(HttpServletRequest request){
		System.out.println("得到所有菜单集合："+menuService.role_menuService(request));
		return menuService.role_menuService(request);
	}
	
	
	// memu标签集合, 得到第一层
	@ResponseBody
	@RequestMapping("/allmenu")
	public List<Menu> allmenu(HttpServletRequest request){
		System.out.println("得到所有菜单第一层集合："+menuService.allmenuService());
		return menuService.allmenuService();
	}
	
	// 通过父菜单得到子菜单
	@ResponseBody
	@RequestMapping("/parentMenu_childrenMenu")
	public List<Menu> parentMenu_childrenMenu(HttpServletRequest request){
		System.out.println("得到父菜单名字："+request.getParameter("current_menu_id"));
		return menuService.childrenMenuService(request);
	}
	
	
	// 通过当前菜单id，加入一个字菜单
	@ResponseBody
	@RequestMapping("/current_menuid_setchildrenmenu")
	public String current_menuid_setchildrenmenu(HttpServletRequest request){
		System.out.println("得到父菜单id："+request.getParameter("type"));
		System.out.println("菜单描述："+request.getParameter("caidanmiaoshu"));
		System.out.println("菜单名字："+request.getParameter("menuname"));
		// 通过父菜单id得到父标签的等级GRADE，再加1或者不加
		Menu GRADEid = menuService.currentid_getGRADE(Integer.parseInt(request.getParameter("type")));
		System.out.println("GRADEid是："+GRADEid);
		//判断GRADE
		int gid = GRADEid.getGRADE();
		int gidd = 0;
		if(gid == -1){
			gidd = 0;
		}else if (gid == 0) {
			gidd = 1;
		}else {
			gidd = 1;
		}
		menuService.currentid_setchildrenmenu(request,gidd);
		return  "1";
	}
	
	
	//测试增强sql
	@ResponseBody
	@RequestMapping("/testsql")
	public void testsql(){
		 
		menuService.getsql();

	}
	
	
	
}
