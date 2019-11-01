package cn.hd.control;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.hd.pojo.Button;
import cn.hd.service.ButtonService;

@Controller
@RequestMapping("/buttonManagerHandle")
public class ButtonManagerHandle {
	@Resource
	private ButtonService buttonService;
	// 添加button数据
	@ResponseBody
	@RequestMapping("/addbutton")
	public String addbutton(Button button){
		buttonService.addButtonService(button);
		return "1";
	}
	//所有button数据
	@ResponseBody
	@RequestMapping("/allbutton")
	public List<Button> allbutton(){
		System.out.println("显示所有button数据："+buttonService.allbutton());
		return buttonService.allbutton();
	}
	
	//删除button数据
	@ResponseBody
	@RequestMapping("/deletebutton")
	public String deletebutton(HttpServletRequest request){
		System.out.println("删除的button值："+request.getParameter("delete"));
		 buttonService.deletebutton(Integer.parseInt(request.getParameter("delete")));
		 return "1";
	}
	
}
