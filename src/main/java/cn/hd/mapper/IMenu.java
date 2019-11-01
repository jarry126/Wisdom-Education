package cn.hd.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.hd.pojo.Button;
import cn.hd.pojo.Menu;

public interface IMenu {
	
	//添加菜单
	 public void addRole(Menu menu);
	 //修改菜单
	 public void updateRole(Menu menu);
	 //删除菜单
	 public void delete(@Param("ID")int ID);
	 //查找菜单（某一个）
	 public void selectOne(int id);
	 //查找菜单（多个）
	 public List<Menu> selectAll();
	 // 当前菜单id绑定的按钮
	 public List<Menu> MenuIdTButton(@Param("MID")int MID);
	 // 删除menu_button标签里面有mid标签的内容
	 public void delete_menu_button_mid(@Param("MID")int MID);
	 // 添加到menu_button表中
	 public void menu_buttonid(@Param("MID")int MID, @Param("BID")int BID,@Param("url")String url);
	 
	 // 查找菜单第一层
	 public List<Menu> selectAll_nummberone();
	 
	 public List<Menu> parentMenu_childrenMenu(@Param("MID")int MID);
	 
	 public void currentid_setchildrend(@Param("MID")int MID,@Param("menuname")String menuname,@Param("sdesc")String sdesc,@Param("gidd")int gidd);
	 
	 public List<Menu> currentid_get(@Param("MID")int MID);
	 
	 public List<Menu> testslq();
	 
}
