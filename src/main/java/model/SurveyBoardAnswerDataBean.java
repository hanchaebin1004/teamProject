package model;

public class SurveyBoardAnswerDataBean {
	private int sa_num;
	private String sa_item;

	public int getSa_num() {
		return sa_num;
	}

	public void setSa_num(int sa_num) {
		this.sa_num = sa_num;
	}

	public String getSa_item() {
		return sa_item;
	}

	public void setSa_item(String sa_item) {
		this.sa_item = sa_item;
	}

	@Override
	public String toString() {
		return "SurveyBoardAnswerDataBean [sa_num=" + sa_num + ", sa_item=" + sa_item + "]";
	}

}
