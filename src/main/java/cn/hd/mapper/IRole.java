package cn.hd.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.hd.pojo.Role;

/**
 * 对菜单的操作
 * @author Administrator
 *
 */
public interface IRole {
	//添加菜单
	 public void addRole(Role role);
	 //修改菜单
	 public void updateRole(Role role);
	 //删除菜单
	 public void delete(@Param("ID")int ID);
	 //查找菜单（某一个）
	 public void selectOne(int id);
	 //查找菜单（多个）
	 public List<Role> selectAll();
	 // 角色加入菜单id, role_menu表, 加入role id 和menu id
	 public void role_menuid(@Param("RID")int RID, @Param("MID")int MID );
	 // 通过角色 id， 得到当前角色有哪些菜单
	 public List<Role> roleIdToMenu(@Param("RID")int RID);
	 //删除当前role_menu 表中所有当前rid标签的值 
	 public void delete_role_menu_Rid(@Param("RID")int RID);
	
	 //角色-菜单-按钮
	 public int role_menu_button_id(@Param("RID")int RID,@Param("MID")int MID,@Param("BID")int BID);
	 
	 //删除角色-菜单-按钮表中，根据角色，菜单名字来
	 public void delete_role_menu_button_roleid_menuid(@Param("RID")int RID,@Param("MID")int MID);
	 
	 public void role_menu_button_roleid_menuid_buttonid(@Param("RID")int RID,@Param("MID")int MID,@Param("BID")int BID);
	 
}
