package cn.hd.service;



import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.alibaba.fastjson.JSON;

import cn.hd.mapper.IRole;
import cn.hd.mapper.IUser;
import cn.hd.pojo.Menu;
import cn.hd.pojo.Role;
import cn.hd.pojo.User;
/**
 * 用户管理服务层
 * @author Administrator
 *
 */

@Service
public class UserService {
	@Resource
	private  IUser iUser;
	@Resource
	private IRole iRole;
	public void addUserService(User user){
		user.setDCREATETIME(new Date());
		// 添加用户
		iUser.addUser(user);

	}
	
	// 所有user集合
	public List userAll(){
		List<User> userAll = iUser.findUserAll();
		return userAll;
	}
	
	public void deleteUser(int uid){
		iUser.deletetUser(uid);
	}
	
	//更改数据
	public void updateService(User user){
		if(user.getSEX() == "1"){
			user.setSEX("男");
		}else if (user.getSEX() == "0") {
			user.setSEX("女");
		}
		iUser.selectUser(user);
	}
	
	
	
	// user权限操作，生成页面，所有角色集合
		public List<Role> user_roleService(HttpServletRequest request){
			int current_role_id = Integer.parseInt(request.getParameter("current_role_id"));
			System.out.println("当前用户-角色的用户id:"+current_role_id);
			// 通过current_role_id角色表与角色菜单表内连接，得到角色表，写入checked
			List<User> allcurrentUser = iUser.userIdTorole(current_role_id);
			System.out.println("allcurrentRole集合:"+allcurrentUser);
			//处理集合数据
			List<Integer> userRoleId = new ArrayList<Integer>();
			for(User currentUserRole :allcurrentUser){
				userRoleId.add(currentUserRole.getRID());
			}
			System.out.println("当前用户角色id集合："+userRoleId); // 4,5,8
			// 所有角色集合
			List<Role> allrole = iRole.selectAll();
			
			for(Role UserOne: allrole){
				for(Integer userRoleIdOne:userRoleId){
					// 判断集合数字与菜单集合中的id是否相等
					//System.out.println("MenuOne.getMID():"+MenuOne.getID());
					//System.out.println("roleMenuIdOne:"+roleMenuIdOne);
					if(userRoleIdOne == UserOne.getID()){
						UserOne.setCHECKED("checked");
						break;
					}
				}
			}
			
			return allrole;
		}
		
	
}
