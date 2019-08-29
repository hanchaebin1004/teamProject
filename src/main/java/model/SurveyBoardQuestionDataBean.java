package model;

public class SurveyBoardQuestionDataBean {
	private int sq_num;
	private String sq_text; 
	private String sq_div;
	
	
	public int getSq_num() {
		return sq_num;
	}
	public void setSq_num(int sq_num) {
		this.sq_num = sq_num;
	}
	public String getSq_text() {
		return sq_text;
	}
	public void setSq_text(String sq_text) {
		this.sq_text = sq_text;
	}
	public String getSq_div() {
		return sq_div;
	}
	public void setSq_div(String sq_div) {
		this.sq_div = sq_div;
	}
	@Override
	public String toString() {
		return "SurveyBoardQuestionDataBean [sq_num=" + sq_num + ", sq_text=" + sq_text + ", sq_div=" + sq_div + "]";
	}
}
