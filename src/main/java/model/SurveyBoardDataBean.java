package model;

import java.sql.Timestamp;

public class SurveyBoardDataBean {
	private int sb_num;
	private String sb_title;
	private String r_receiver;
	private Timestamp sb_regdate;
	private int sb_readcount;
	
	public int getSb_num() {
		return sb_num;
	}
	public void setSb_num(int sb_num) {
		this.sb_num = sb_num;
	}
	public String getSb_title() {
		return sb_title;
	}
	public void setSb_title(String sb_title) {
		this.sb_title = sb_title;
	}
	public String getR_receiver() {
		return r_receiver;
	}
	public void setR_receiver(String r_receiver) {
		this.r_receiver = r_receiver;
	}
	public Timestamp getSb_regdate() {
		return sb_regdate;
	}
	public void setSb_regdate(Timestamp sb_regdate) {
		this.sb_regdate = sb_regdate;
	}
	public int getSb_readcount() {
		return sb_readcount;
	}
	public void setSb_readcount(int sb_readcount) {
		this.sb_readcount = sb_readcount;
	}
	
	@Override
	public String toString() {
		return "SurveyBoardDataBean [sb_num=" + sb_num + ", sb_title=" + sb_title + ", r_receiver=" + r_receiver
				+ ", sb_regdate=" + sb_regdate + ", sb_readcount=" + sb_readcount + "]";
	}

}
