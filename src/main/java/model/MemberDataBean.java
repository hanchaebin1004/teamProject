package model;

public class MemberDataBean {
	private String e_num;
	private String m_num; 
	private String m_pw;
	private String m_name;
	private String m_birth;
	private String m_sex;
	private String m_tel;
	private String m_add;
	private String m_id;
	public String getE_num() {
		return e_num;
	}
	public void setE_num(String e_num) {
		this.e_num = e_num;
	}
	public String getM_num() {
		return m_num;
	}
	public void setM_num(String m_num) {
		this.m_num = m_num;
	}
	public String getM_pw() {
		return m_pw;
	}
	public void setM_pw(String m_pw) {
		this.m_pw = m_pw;
	}
	public String getM_name() {
		return m_name;
	}
	public void setM_name(String m_name) {
		this.m_name = m_name;
	}
	public String getM_birth() {
		return m_birth;
	}
	public void setM_birth(String m_birth) {
		this.m_birth = m_birth;
	}
	public String getM_sex() {
		return m_sex;
	}
	public void setM_sex(String m_sex) {
		this.m_sex = m_sex;
	}
	public String getM_tel() {
		return m_tel;
	}
	public void setM_tel(String m_tel) {
		this.m_tel = m_tel;
	}
	public String getM_add() {
		return m_add;
	}
	public void setM_add(String m_add) {
		this.m_add = m_add;
	}
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	@Override
	public String toString() {
		return "MemberDataBean [e_num=" + e_num + ", m_num=" + m_num + ", m_pw=" + m_pw + ", m_name=" + m_name
				+ ", m_birth=" + m_birth + ", m_sex=" + m_sex + ", m_tel=" + m_tel + ", m_add=" + m_add + ", m_id="
				+ m_id + "]";
	}
}
