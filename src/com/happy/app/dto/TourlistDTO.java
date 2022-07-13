package com.happy.app.dto;

public class TourlistDTO {
	private String addr1;
	private int areacode;
	private int sigungucode;
	private String firstimage2;
	private int readcount;
	private String title;
	private int ping_num;
	
	public TourlistDTO(String addr1, int areacode, int sigungucode, String firstimage2, int readcount, String title) {
		super();
		this.addr1 = addr1;
		this.areacode = areacode;
		this.sigungucode = sigungucode;
		this.firstimage2 = firstimage2;
		this.readcount = readcount;
		this.title = title;
	}
	
	public String getAddr1() {
		return addr1;
	}
	public void setAddr1(String addr1) {
		this.addr1 = addr1;
	}
	public int getAreacode() {
		return areacode;
	}
	public void setAreacode(int areacode) {
		this.areacode = areacode;
	}
	public int getSigungucode() {
		return sigungucode;
	}
	public void setSigungucode(int sigungucode) {
		this.sigungucode = sigungucode;
	}
	public String getFirstimage2() {
		return firstimage2;
	}
	public void setFirstimage2(String firstimage2) {
		this.firstimage2 = firstimage2;
	}
	public int getReadcount() {
		return readcount;
	}
	public void setReadcount(int readcount) {
		this.readcount = readcount;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public int getPing_num() {
		return ping_num;
	}
	public void setPing_num(int ping_num) {
		this.ping_num = ping_num;
	}
	
	

	
	
}
