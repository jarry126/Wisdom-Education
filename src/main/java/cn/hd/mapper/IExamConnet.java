package cn.hd.mapper;

import java.util.List;

import cn.hd.pojo.ExamAllConnent;
import cn.hd.pojo.Exampaper;

/**
 * 题库管理,试卷管理
 * @author Administrator
 *
 */
public interface IExamConnet {
	public  List<ExamAllConnent> selectAll();
	//得到所有试卷内容组成集合
	public List<Exampaper> selectAllExamPaper();
}
