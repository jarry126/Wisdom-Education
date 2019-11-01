package cn.hd.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import cn.hd.mapper.IButton;
import cn.hd.mapper.IMenu;
import cn.hd.pojo.Button;
import cn.hd.pojo.Menu;
import cn.hd.pojo.Role;

/**
 * 按钮菜单业务层
 * @author Administrator
 *
 */
@Service
public class ButtonService {
	@Resource
	private IButton iButton;
	@Resource
	private IMenu iMenu;
	
	
	public void addButtonService(Button button){
		button.setCREATETIME(new Date());
		iButton.addButton(button);
	}
	
	
	public List<Button> allbutton(){
		return iButton.selectAll();
	}
	
	public void deletebutton(int bid){
		iButton.delete(bid);
	}
	
	
	// 菜单-按钮权限操作，所有按钮集合
		public List<Button> menu_buttonService(HttpServletRequest request){
			int current_role_id = Integer.parseInt(request.getParameter("current_role_id"));
			System.out.println("当前菜单-按钮的菜单id:"+current_role_id);
			// 通过current_role_id角色表与角色菜单表内连接，得到角色表，写入checked
			List<Menu> allcurrentMenu = iMenu.MenuIdTButton(current_role_id);
			System.out.println("allcurrentMenu集合:"+allcurrentMenu);
			//处理集合数据
			List<Integer> roleMenuId = new ArrayList<Integer>();
			for(Menu currentMenuButton :allcurrentMenu){
				roleMenuId.add(currentMenuButton.getButtonid());
			}
			System.out.println("当前按钮id集合："+roleMenuId); // 
			// 所有按钮集合, 跟menu_button合并得到里面的url
			//List<Button> allButton = iButton.selectAllandurl(current_role_id);
			List<Button> allButton = iButton.selectAll();
			//将地址放入allButton中
			List<Button> allButtonurl = iButton.selectAllandurl(current_role_id);
			allButton.get(0).setUrl(allButtonurl.get(0).getUrl());
			
			
			
			for(Button buttonOne: allButton){
				for(Integer roleMenuIdOne:roleMenuId){
					//System.out.println("得到里面的id："+buttonOne.getID());
					// 判断集合数字与菜单集合中的id是否相等
					//System.out.println("MenuOne.getMID():"+MenuOne.getID());
					//System.out.println("roleMenuIdOne:"+roleMenuIdOne);
					if(roleMenuIdOne == buttonOne.getID()){
						buttonOne.setCHECKED("checked");
						break;
					}
				}
			}
			
			return allButton;
		}
		
		
		// 所有按钮集合
		public List<Button> allmenuService(){
			return iButton.selectAll();
		}
	
	
}
