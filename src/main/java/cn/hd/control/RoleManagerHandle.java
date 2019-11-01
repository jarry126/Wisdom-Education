package cn.hd.control;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;

import cn.hd.pojo.Role;
import cn.hd.service.RoleService;

/**
 * 菜单操作
 * @author Administrator
 *
 */
@Controller
@RequestMapping("/roleManagerHandle")
public class RoleManagerHandle {
	@Resource
	private RoleService roleService;
	
	//添加角色
	@ResponseBody
	@RequestMapping("/addrole")
	public String addrole(Role role){
		roleService.addRoleService(role);
		
		return "1";
		
	}
	
	//删除某个角色deleteRole
	@ResponseBody
	@RequestMapping("/deleteRole")
	public String deleteRole(HttpServletRequest request){
		String rid = request.getParameter("delete");
		System.out.println("需要删除的id值："+rid);
		roleService.deleteRoleService(Integer.parseInt(rid));
		
		return "1";
		
	}
	
	//查找所有角色
	@ResponseBody
	@RequestMapping("/selectRole")
	public List<Role> selectRole(){
		List<Role> allRole = roleService.allRoleService();
		System.out.println("所有角色："+allRole);
		return allRole;
	}
	
	// 角色绑定菜单,得到当前角色绑定的菜单id
	@ResponseBody
	@RequestMapping("/roleBandMenu")
	public List<Role> roleBandMenu(){
		List<Role> allRole = roleService.allRoleService();
		System.out.println("所有角色："+allRole);
		return allRole;
	}
}
