package cn.hd.control;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.sun.tools.internal.ws.processor.model.Request;

import cn.hd.pojo.ExamAllConnent;
import cn.hd.pojo.Exampaper;
import cn.hd.service.Exam_allConnentService;

/**
 * 题库管理,试卷管理
 * @author Administrator
 *
 */
@Controller
@RequestMapping("/exam_allConnent")
public class Exam_allConnent {
	@Resource
	private Exam_allConnentService exam_allConnentService;
	
	@ResponseBody
	@RequestMapping("/selectAll")
	public List<ExamAllConnent> selectAll(@RequestParam("current_id") String current_id){
		System.out.println("得到题库管理id："+current_id);
		return exam_allConnentService.selectall();
	}
	
	//试卷管理
	@ResponseBody
	@RequestMapping("/selectAllExamPaper")
	public List<Exampaper> selectAllExamPaper(){
		List<Exampaper> exampaperall = exam_allConnentService.selectAllExamPaper();
		System.out.println("测试时间："+exampaperall.get(0).getDcreate());
		System.out.println("得到试卷管理所有的对象:"+exampaperall);
		return exampaperall;
	}
	
	// 通过地址的paperid跳转试卷页面（从数据库随机抽取题目）
	@ResponseBody
	@RequestMapping("/urlid_exmppage")
	public ModelAndView urlid_exmppage(HttpServletRequest reqeuest,HttpServletResponse response){
		int paperid = Integer.parseInt(reqeuest.getParameter("paperid"));
		
	}
	
}
