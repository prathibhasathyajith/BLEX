package com.mobitel.mtktweb.entity;

public class SearchInfoEntity {
	private String fromSt;
	private String toSt;
	private String depDate;
	private boolean isReturn;
	private String returnChecked;
	private String retDate;
	private int noOfUsers;

	public String getReturnChecked() {
		return returnChecked;
	}

	public void setReturnChecked(String returnChecked) {
		this.returnChecked = returnChecked;
	}

	public String getFromSt() {
		return fromSt;
	}

	public void setFromSt(String fromSt) {
		this.fromSt = fromSt;
	}

	public String getToSt() {
		return toSt;
	}

	public void setToSt(String toSt) {
		this.toSt = toSt;
	}

	public String getDepDate() {
		return depDate;
	}

	public void setDepDate(String depDate) {
		this.depDate = depDate;
	}

	public boolean isReturn() {
		return isReturn;
	}

	public void setReturn(boolean isReturn) {
		this.isReturn = isReturn;
	}

	public String getRetDate() {
		return retDate;
	}

	public void setRetDate(String retDate) {
		this.retDate = retDate;
	}

	public int getNoOfUsers() {
		return noOfUsers;
	}

	public void setNoOfUsers(int noOfUsers) {
		this.noOfUsers = noOfUsers;
	}

}
