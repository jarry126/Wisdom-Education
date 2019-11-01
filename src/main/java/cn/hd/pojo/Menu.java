package cn.hd.pojo;

public class Menu {
	private int ID;
	private String SNAME;
	private String SDESC;
	private int GRADE;
	private int MID;
	// 当前角色管理是否有当前菜单管理
	private String CHECKED;
	//按钮id值
	private int buttonid;
	
	public Menu(){
		super();
	}


	public int getID() {
		return ID;
	}


	public void setID(int iD) {
		ID = iD;
	}


	public String getSNAME() {
		return SNAME;
	}


	public void setSNAME(String sNAME) {
		SNAME = sNAME;
	}


	public String getSDESC() {
		return SDESC;
	}


	public void setSDESC(String sDESC) {
		SDESC = sDESC;
	}


	public int getGRADE() {
		return GRADE;
	}


	public void setGRADE(int gRADE) {
		GRADE = gRADE;
	}


	public int getMID() {
		return MID;
	}


	public void setMID(int mID) {
		MID = mID;
	}


	public String getCHECKED() {
		return CHECKED;
	}


	public void setCHECKED(String cHECKED) {
		CHECKED = cHECKED;
	}


	public int getButtonid() {
		return buttonid;
	}


	public void setButtonid(int buttonid) {
		this.buttonid = buttonid;
	}



	
	
	
	
}
