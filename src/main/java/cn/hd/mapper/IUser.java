package cn.hd.mapper;
/**
 * 用户表接口，映射到UserMapper上去
 * @author Administrator
 *
 */

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.hd.pojo.Role;
import cn.hd.pojo.User;
public interface IUser {
	// 添加用户
	public void addUser(User user);
	//删除用户
	public void deletetUser(@Param("uid")int uid);
	//改变用户
	public void selectUser(User user);
	//查找用户(某一个)
	public User findUser(int uid);
	//查找用户(所有用户)
	public List<User> findUserAll();
	// 得到所有当前user表id 得到user_role标签中的id组合
	public List<User> userIdTorole(@Param("UID")int UID);
	//删除user_role里面的关于当前userid的值
	 public void delete_user_role_uid(@Param("UID")int UID);
	 // 添加到user_role表中
	 public void user_roleid(@Param("UID")int UID, @Param("RID")int RID);
	 
	
}
