package cn.hd.service;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;import com.alibaba.druid.util.DaemonThreadFactory;

import cn.hd.mapper.IRole;
import cn.hd.pojo.Role;


@Service
public class RoleService {
	@Resource
	private IRole iRole;
	
	public void addRoleService(Role role){
		role.setCREATETIME(new Date());
		iRole.addRole(role);
	}
	
	public List<Role> allRoleService(){
		List<Role> allRole = iRole.selectAll();
		return allRole;
	}
	
	public void deleteRoleService(int rid){
		iRole.delete(rid);
	}
	
}
