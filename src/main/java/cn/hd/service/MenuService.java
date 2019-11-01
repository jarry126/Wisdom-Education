package cn.hd.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Service;

import cn.hd.mapper.IButton;
import cn.hd.mapper.IMenu;
import cn.hd.mapper.IRole;
import cn.hd.pojo.Button;
import cn.hd.pojo.Menu;
import cn.hd.pojo.Role;

/**
 * 菜单业务层
 * @author Administrator
 *
 */
@Service
public class MenuService {
	@Resource
	private IMenu iMenu;
	@Resource
	private IRole iRole;
	@Resource
	private IButton iButton;
	
	// 父菜单得到子菜单
	public List<Menu> childrenMenuService(HttpServletRequest request){
		int current_parentid = Integer.parseInt(request.getParameter("current_menu_id"));
		return iMenu.parentMenu_childrenMenu(current_parentid);
	}
	
	
	
	// 角色-菜单权限操作，所有菜单集合//再将button加入集合里面去，组成[[菜单表，按钮表],[],[]]
	public List role_menuService(HttpServletRequest request){
		int current_role_id = Integer.parseInt(request.getParameter("current_role_id"));
		System.out.println("当前角色-菜单的角色id:"+current_role_id);
		// 通过current_role_id角色表与角色菜单表内连接，得到角色表，写入checked
		List<Role> allcurrentRole = iRole.roleIdToMenu(current_role_id);
		System.out.println("allcurrentRole集合:"+allcurrentRole);
		//处理集合数据
		List<Integer> roleMenuId = new ArrayList<Integer>();
		for(Role currentRoleMenu :allcurrentRole){
			roleMenuId.add(currentRoleMenu.getMID());
		}
		System.out.println("当前角色菜单id："+roleMenuId); // 4,5,8
		// 所有菜单集合
		List<Menu> allMenu = iMenu.selectAll();
		
		for(Menu MenuOne: allMenu){
			for(Integer roleMenuIdOne:roleMenuId){
				// 判断集合数字与菜单集合中的id是否相等
				//System.out.println("MenuOne.getMID():"+MenuOne.getID());
				//System.out.println("roleMenuIdOne:"+roleMenuIdOne);
				if(roleMenuIdOne == MenuOne.getID()){
					MenuOne.setCHECKED("checked");
					break;
				}
			}
		}
		
		return allMenu;
//		// 所有按钮集合，iButton.selectAll()
//		List<Button> buttonAll = iButton.selectAll();
//		List role_menu_button_All = new ArrayList();
//		
//		// 循环菜单集合
//		for(Menu MenuOneOne: allMenu){
//			List role_menu_button_one = new ArrayList();
//			role_menu_button_one.add(MenuOneOne);
//			for(Button buttonone : buttonAll){
//				/// 是否有记录
//				if(iRole.role_menu_button_id(current_role_id,MenuOneOne.getID(),buttonone.getID()) !=0 ){
//					buttonone.setCHECKED("checked");	
//				}
//				role_menu_button_one.add(buttonone);
//			}
//			role_menu_button_All.add(role_menu_button_one);
//		}
//		
//		System.out.println("role_menu_button的表现集合:"+role_menu_button_All);
//		
//		HashMap hashMap =  new HashMap();
//		
		
		//return role_menu_button_All;
	}		
	
	// 所有memu集合,先是第一层
	public List<Menu> allmenuService(){
		return iMenu.selectAll_nummberone();
	}
	
	
	
	
	// 通过角色id-菜单id得到按钮id，组成集合
	public List roleMenuButtonService(HttpServletRequest request,HttpServletResponse reponse){
		int current_role_id = Integer.parseInt(request.getParameter("current_role_id"));
		int current_menu_id = Integer.parseInt(request.getParameter("current_menu_id"));
		System.out.println("当前角色id:"+current_role_id);
		System.out.println("当前菜单id:"+current_role_id);
		
		// 所有按钮集合，iButton.selectAll()
		List<Button> buttonAll = iButton.selectAll();
		
		// 得到当前角色和按钮的按钮集合
		List<Button> buttonsome = iButton.roleid_menuid_button(current_role_id,current_menu_id);
		//处理集合数据
		List<Integer> buttonId = new ArrayList<Integer>();
		for(Button currentbutton :buttonsome){
			buttonId.add(currentbutton.getID());
		}
		

		for(Button buttonOne: buttonAll){
			for(Integer buttonIdOne:buttonId){
				// 判断集合数字与菜单集合中的id是否相等
				//System.out.println("MenuOne.getMID():"+MenuOne.getID());
				//System.out.println("roleMenuIdOne:"+roleMenuIdOne);
				if(buttonIdOne == buttonOne.getID()){
					buttonOne.setCHECKED("checked");
					break;
				}
			}
		}

		return buttonAll;
	}		
	
	
	public void currentid_setchildrenmenu(HttpServletRequest request, int gidd){
		int mid = Integer.parseInt(request.getParameter("type"));
		String menuname = request.getParameter("menuname");
		String sdesc = request.getParameter("caidanmiaoshu");
		iMenu.currentid_setchildrend(mid,menuname,sdesc,gidd);
	}
	
	public Menu currentid_getGRADE(int grandid){
		return iMenu.currentid_get(grandid).get(0);
	}
	
	
	public void getsql(){
		List<Menu> listMenu = iMenu.testslq();
		for(Menu menuone:listMenu){
			System.out.println("得到的所有东西："+menuone.getSNAME());
		}
	}
}
