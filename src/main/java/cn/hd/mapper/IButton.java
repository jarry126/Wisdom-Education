package cn.hd.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.hd.pojo.Button;


public interface IButton {
		//添加按钮
		 public void addButton(Button button);
		 //修改按钮
		 public void updateButton(Button button);
		 //删除按钮
		 public void delete(@Param("ID")int ID);
		 //查找按钮（某一个）
		 public void selectOne(int id);
		 //查找按钮（多个）
		 public List<Button> selectAll();
		 public List<Button>roleid_menuid_button(@Param("RID")int RID,@Param("MID")int MID);
		 
		 public List<Button> selectAllandurl(@Param("MID")int MID);
}
