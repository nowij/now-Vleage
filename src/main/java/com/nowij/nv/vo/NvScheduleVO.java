package com.nowij.nv.vo;

public class NvScheduleVO {
	private int scdlNo;
	private String operation;
	private String scdlId;
	private String scdlCron;
	
	public int getScdlNo() {
		return scdlNo;
	}
	public void setScdlNo(int scdlNo) {
		this.scdlNo = scdlNo;
	}
	public String getOperation() {
		return operation;
	}
	public void setOperation(String operation) {
		this.operation = operation;
	}
	public String getScdlId() {
		return scdlId;
	}
	public void setScdlId(String scdlId) {
		this.scdlId = scdlId;
	}
	public String getScdlCron() {
		return scdlCron;
	}
	public void setScdlCron(String scdlCron) {
		this.scdlCron = scdlCron;
	}
}
