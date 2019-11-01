package cn.hd.pojo;


import java.io.Serializable;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;

/**
 * 对应数据库中User表作为模型类
 * @author Administrator
 *
 */
public class User implements Serializable{
	private int ID;
	private String SNAME;
	private String SPASSWD;
	private String SEX;
	@JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone="GMT+8")
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date VALIDTIME;
	private int MOBILEPHONE;
	private String SEMAIL;
	@JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone="GMT+8")
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date DCREATETIME;
	@JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone="GMT+8")
	@DateTimeFormat(pattern = "yyyy-MM-dd")//最后的登录时间
	private Date DLASTLOGINTIME;
	// 角色id
	private int RID;
	private String CHECKED;
	
	public User() {
		super();
		// TODO Auto-generated constructor stub
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
	public String getSPASSWD() {
		return SPASSWD;
	}
	public void setSPASSWD(String sPASSWD) {
		SPASSWD = sPASSWD;
	}
	public String getSEX() {
		return SEX;
	}
	public void setSEX(String sEX) {
		SEX = sEX;
	}
	public Date getVALIDTIME() {
		return VALIDTIME;
	}
	public void setVALIDTIME(Date vALIDTIME) {
		VALIDTIME = vALIDTIME;
	}
	public int getMOBILEPHONE() {
		return MOBILEPHONE;
	}
	public void setMOBILEPHONE(int mOBILEPHONE) {
		MOBILEPHONE = mOBILEPHONE;
	}
	public String getSEMAIL() {
		return SEMAIL;
	}
	public void setSEMAIL(String sEMAIL) {
		SEMAIL = sEMAIL;
	}
	public Date getDCREATETIME() {
		return DCREATETIME;
	}
	public void setDCREATETIME(Date dCREATETIME) {
		DCREATETIME = dCREATETIME;
	}



	public Date getDLASTLOGINTIME() {
		return DLASTLOGINTIME;
	}



	public void setDLASTLOGINTIME(Date dLASTLOGINTIME) {
		DLASTLOGINTIME = dLASTLOGINTIME;
	}



	public int getRID() {
		return RID;
	}



	public void setRID(int rID) {
		RID = rID;
	}



	public String getCHECKED() {
		return CHECKED;
	}



	public void setCHECKED(String cHECKED) {
		CHECKED = cHECKED;
	}

	
	
	
}
