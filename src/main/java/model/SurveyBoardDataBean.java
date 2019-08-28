package model;

import java.sql.Timestamp;

public class SurveyBoardDataBean {
	private int SB_NUM;
	private String SB_TITLE;
	private String R_RECEIVER;
	private Timestamp SB_REGDATE;
	private int SB_READCOUNT;
	
	public int getSB_NUM() {
		return SB_NUM;
	}
	public void setSB_NUM(int sB_NUM) {
		SB_NUM = sB_NUM;
	}
	public String getSB_TITLE() {
		return SB_TITLE;
	}
	public void setSB_TITLE(String sB_TITLE) {
		SB_TITLE = sB_TITLE;
	}
	public String getR_RECEIVER() {
		return R_RECEIVER;
	}
	public void setR_RECEIVER(String r_RECEIVER) {
		R_RECEIVER = r_RECEIVER;
	}
	public Timestamp getSB_REGDATE() {
		return SB_REGDATE;
	}
	public void setSB_REGDATE(Timestamp sB_REGDATE) {
		SB_REGDATE = sB_REGDATE;
	}
	public int getSB_READCOUNT() {
		return SB_READCOUNT;
	}
	public void setSB_READCOUNT(int sB_READCOUNT) {
		SB_READCOUNT = sB_READCOUNT;
	}
	
	
	@Override
	public String toString() {
		return "SurveyBoardDataBean [SB_NUM=" + SB_NUM + ", SB_TITLE=" + SB_TITLE + ", R_RECEIVER=" + R_RECEIVER
				+ ", SB_REGDATE=" + SB_REGDATE + ", SB_READCOUNT=" + SB_READCOUNT + "]";
	}

}
