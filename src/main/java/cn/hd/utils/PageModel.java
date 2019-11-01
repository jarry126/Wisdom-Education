package cn.hd.utils;
/**
 * 对应页面
 * 1.每页显示的个�?
 * 2.当前 �?
 * 3.首页
 * 4.尾页
 * 5.�?共多少页
 * @author Administrator
 *
 */
public class PageModel {
	private int pageContent = 3;
	private int cunPage;
	private int startPage = 1;
	private int endPage;
	private int totalContent;
	
	
	// 带每页数量的构�?�方�?
	public PageModel(int pageContent) {
		super();
		this.pageContent = pageContent;
	}
	public PageModel(){
		
		
	}
	
	public int getPageContent() {
		return pageContent;
	}
	public void setPageContent(int pageContent) {
		this.pageContent = pageContent;
	}
	public int getCunPage() {
		return cunPage;
	}
	public void setCunPage(int cunPage) {
		this.cunPage = cunPage;
	}
	public int getStartPage() {
		return startPage;
	}
	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}
	public int getEndPage() {
		return totalContent%pageContent!=0?totalContent/pageContent+1:totalContent/pageContent;
	}
	// 设置�?后一页的页数
	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}
	public int getTotalContent() {
		return totalContent;
	}
	public void setTotalContent(int totalContent) {
		this.totalContent = totalContent;
	}
	

	
}
