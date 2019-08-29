package model;

public class RootNode {
	private String startX;
	private String startY;
	private String viaX;
	private String viaY;
	private String endX;
	private String endY;
	private String startName;
	private String viaName;
	private String endName;
	
	
	public String getStartName() {
		return startName;
	}
	public void setStartName(String startName) {
		this.startName = startName;
	}
	public String getViaName() {
		return viaName;
	}
	public void setViaName(String viaName) {
		this.viaName = viaName;
	}
	public String getEndName() {
		return endName;
	}
	public void setEndName(String endName) {
		this.endName = endName;
	}
	public String getStartX() {
		return startX;
	}
	public void setStartX(String startX) {
		this.startX = startX;
	}
	public String getStartY() {
		return startY;
	}
	public void setStartY(String startY) {
		this.startY = startY;
	}
	public String getViaX() {
		return viaX;
	}
	public void setViaX(String viaX) {
		this.viaX = viaX;
	}
	public String getViaY() {
		return viaY;
	}
	public void setViaY(String viaY) {
		this.viaY = viaY;
	}
	public String getEndX() {
		return endX;
	}
	public void setEndX(String endX) {
		this.endX = endX;
	}
	public String getEndY() {
		return endY;
	}
	public void setEndY(String endY) {
		this.endY = endY;
	}
	
	@Override
	public String toString() {
		return "RootNode [startX=" + startX + ", startY=" + startY + ", viaX=" + viaX + ", viaY=" + viaY + ", endX="
				+ endX + ", endY=" + endY + "]";
	}
	
	
}
