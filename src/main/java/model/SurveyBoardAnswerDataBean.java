package model;

public class SurveyBoardAnswerDataBean {
	private int sa_num;
	private int sq_num;
	private String sa_item;

	public int getSa_num() {
		return sa_num;
	}

	public void setSa_num(int sa_num) {
		this.sa_num = sa_num;
	}
	

	public int getSq_num() {
		return sq_num;
	}

	public void setSq_num(int sq_num) {
		this.sq_num = sq_num;
	}

	public String getSa_item() {
		return sa_item;
	}

	public void setSa_item(String sa_item) {
		this.sa_item = sa_item;
	}

	@Override
	public String toString() {
		return "SurveyBoardAnswerDataBean [sa_num=" + sa_num + ", sq_num=" + sq_num + ", sa_item=" + sa_item + "]";
	}

	

}
