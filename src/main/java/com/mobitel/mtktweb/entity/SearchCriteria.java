package com.mobitel.mtktweb.entity;

import com.fasterxml.jackson.annotation.JsonProperty;

public class SearchCriteria {
	private String fromStCode;
	private String toStCode;
	private String departureDate;
	@JsonProperty
	private boolean isReturn;
	private String returnDate;

	public String getFromStCode() {
		return fromStCode;
	}

	public void setFromStCode(String fromStCode) {
		this.fromStCode = fromStCode;
	}

	public String getToStCode() {
		return toStCode;
	}

	public void setToStCode(String toStCode) {
		this.toStCode = toStCode;
	}

	public String getDepartureDate() {
		return departureDate;
	}

	public void setDepartureDate(String departureDate) {
		this.departureDate = departureDate;
	}

	public String getReturnDate() {
		return returnDate;
	}

	public void setReturnDate(String returnDate) {
		this.returnDate = returnDate;
	}

	public boolean isReturn() {
		return isReturn;
	}

	public void setReturn(boolean isReturn) {
		this.isReturn = isReturn;
	}

}
