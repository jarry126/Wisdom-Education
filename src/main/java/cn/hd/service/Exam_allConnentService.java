package cn.hd.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.hd.mapper.IExamConnet;
import cn.hd.pojo.ExamAllConnent;
import cn.hd.pojo.Exampaper;

/**
 * 题库管理service层,试卷管理层
 * @author Administrator
 *
 */
@Service
public class Exam_allConnentService {
	@Resource
	private IExamConnet iExamConnet;
	public List<ExamAllConnent> selectall(){
		return iExamConnet.selectAll();
	}
	
	
	public List<Exampaper> selectAllExamPaper(){
		return iExamConnet.selectAllExamPaper();
	}
}
