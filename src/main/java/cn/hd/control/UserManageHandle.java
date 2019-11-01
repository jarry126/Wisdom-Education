package cn.hd.control;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.serializer.SerializerFeature;

import cn.hd.mapper.IMenu;
import cn.hd.pojo.Button;
import cn.hd.pojo.Menu;
import cn.hd.pojo.Test;
import cn.hd.pojo.User;
import cn.hd.service.UserService;

/**
 * 用户管理处理
 * @author Administrator
 *
 */
@Controller
@RequestMapping("/userManageHandle")
public class UserManageHandle {
	@Resource
	private UserService userService;
	
	//添加用户，和更改用户
	@ResponseBody 
	@RequestMapping("/addUser")
	public String addUser(User user){
		System.out.println("这是adduser请求:"+user.getID());
		//更改数据
		if (user.getID()!=-1){
			userService.updateService(user);
		}else{
			//添加数据
			userService.addUserService(user);
		}
		// 返回所有用户集合
		return "1";
	}
	
/*	@ResponseBody 
	@RequestMapping("/addUser")
	public List<User> addUser(HttpServletRequest request,HttpServletResponse response){
		System.out.println("ID:"+request.getParameter("ID"));
		System.out.println("SNAME:"+request.getParameter("SNAME"));
		System.out.println("SEMAIL:"+request.getParameter("SEMAIL"));
		System.out.println("MOBILEPHONE:"+request.getParameter("MOBILEPHONE"));
		System.out.println("LAST:"+request.getParameter("VALIDTIME"));
		return null;
	}*/

	
//	
	//得到所有用户集合
	@ResponseBody 
	@RequestMapping("/allUser")
	public List<User> userAll(){
		System.out.println("UserManageHandle.userAll()");
		//return JSON.toJSONString(userService.userAll());
		System.out.println("所有用户集合："+userService.userAll());
		return userService.userAll();
	}
	
	//删除某个用户
	@ResponseBody 
	@RequestMapping("/deleteUser")
	public String deleteUser(HttpServletRequest request){
		//System.out.println("删除id:"+request.getParameter("delete"));
		String uid = request.getParameter("delete");
		userService.deleteUser(Integer.parseInt(uid));
		//重新得到数据返回给前端
		
		return "1";
	}
	
	//测试checkbox传入数组
	@ResponseBody 
	@RequestMapping("/test")
	public String test(HttpServletRequest request){
		String[] uid = request.getParameterValues("checkbok1");
		
		for (int i = 0; i < uid.length; i++) {
			String shuiguoname=uid[i];
			System.out.println("测试代码："+shuiguoname);
			}
		
		return "1";
	}
	
	// 测试通过@ResponseBody返回的数据
	@ResponseBody
	@RequestMapping("/testResponseBody")
	public Object testResponseBody(HttpServletRequest request){
		List listall = new ArrayList();
		
		for(int i = 0; i<5;i++){
			Button button = new Button();
			button.setID(i);
			List listOne = new ArrayList();
			listOne.add(button);
			listOne.add(button);
			listOne.add(button);
			listall.add(listOne);
			
		}
		
		return JSONObject.toJSONString(listall, SerializerFeature.BeanToArray);
		
		
		//return JSON.toJSONString(listall, SerializerFeature.BeanToArray);
	}
	
	public static void main(String[] args) {
		String name = "1-2-";
		
		String[] nameList = name.split("-");
		
		for(String nameone:nameList){
			System.out.println("测试："+nameone);
		}
	}
	
	// 测试fastjson的使用
	@ResponseBody
	@RequestMapping("/testFastjson")
	public String testFastjson(HttpServletRequest request){
		String all = request.getParameter("all");
		System.out.println(all);
		Test test1 = JSON.parseObject(all,Test.class);
		System.out.println("age:"+test1.getAge());
		System.out.println("name:"+test1.getName());
		
		
		HashMap hashMpa =new HashMap();
		hashMpa.put("NAME", "JARRY");
		hashMpa.put("AGE","123");
		
		return JSON.toJSONString(hashMpa);
	}
	
	
	
}
