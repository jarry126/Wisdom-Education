package cn.hd.service;

import java.util.ArrayList;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Service;

import clojure.pprint.print_table__init;
import cn.hd.mapper.IMenu;
import cn.hd.mapper.IRole;
import cn.hd.mapper.IUser;

@Service
public class AllListService {
	@Resource
	private IRole iRole;
	@Resource
	private IMenu iMenu;
	@Resource
	private IUser iUser;
	
	// 角色管理-提交权限
	public void role_menu_limit(HttpServletRequest request,HttpServletResponse response){
		//String[] menu_idAll = request.getParameterValues("menu_id");
	
		int menuid = (Integer.parseInt(request.getParameter("menuid")));
		String buttonAll = request.getParameter("buttonAll");
		int roleid = Integer.parseInt(request.getParameter("roleid"));
		// 得到按钮集合
		ArrayList<Integer> buttons = new ArrayList<Integer>();
		String[] buttonall = buttonAll.split("-");
		for(String buttonone:buttonall){
			buttons.add(Integer.parseInt(buttonone));
		}
		
		System.out.println("当前选中的按钮:"+buttons);
		// 删除角色菜单按钮表中当前角色_菜单记录
		iRole.delete_role_menu_button_roleid_menuid(roleid,menuid);
		
		//写入角色菜单按钮表
		for(int buttonone:buttons){
			iRole.role_menu_button_roleid_menuid_buttonid(roleid, menuid, buttonone);
		}

		
		// 添加之前，先删除role_menu表中所有rid标签，再添加就不会出错了
		//iRole.delete_role_menu_Rid(Integer.parseInt(request.getParameter("current_click_id")));

//			for (int i = 0; i < menu_idAll.length; i++) {
//				String shuiguoname=menu_idAll[i];
//				System.out.println("测试代码角色-菜单权限checbox的value值："+shuiguoname);
//				// 循环操作数据库，将菜单id加入角色表中
//				iRole.role_menuid(Integer.parseInt(request.getParameter("current_click_id")), Integer.parseInt(shuiguoname));
//				}
		}
	
	
	// 菜单管理-提交权限
	public void menu_button_limit(HttpServletRequest request,HttpServletResponse response){
		String[] menu_idAll = request.getParameterValues("menu_id");
		String url = request.getParameter("url");
		// 添加之前，先删除menu_button表中所有mid标签，再添加就不会出错了
		iMenu.delete_menu_button_mid(Integer.parseInt(request.getParameter("current_click_id")));

			for (int i = 0; i < menu_idAll.length; i++) {
				String shuiguoname=menu_idAll[i];
				System.out.println("测试代码角色-菜单权限checbox的value值："+shuiguoname);
				// 循环操作数据库，将菜单id加入角色表中
				iMenu.menu_buttonid(Integer.parseInt(request.getParameter("current_click_id")), Integer.parseInt(shuiguoname),url);
				}
		}
	
	// 用户管理-提交权限user_role_limit
	public void user_role_limit(HttpServletRequest request,HttpServletResponse response){
		String[] menu_idAll = request.getParameterValues("menu_id");
		
		// 添加之前，先删除menu_button表中所有mid标签，再添加就不会出错了
		iUser.delete_user_role_uid(Integer.parseInt(request.getParameter("current_click_id")));

			for (int i = 0; i < menu_idAll.length; i++) {
				String shuiguoname=menu_idAll[i];
				System.out.println("测试代码用户-角色权限checbox的value值："+shuiguoname);
				// 循环操作数据库，将菜单id加入角色表中
				iUser.user_roleid(Integer.parseInt(request.getParameter("current_click_id")), Integer.parseInt(shuiguoname));
				}
		}
	
	}

