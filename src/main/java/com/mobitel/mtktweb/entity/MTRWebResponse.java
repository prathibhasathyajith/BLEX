package com.mobitel.mtktweb.entity;

import com.fasterxml.jackson.annotation.JsonInclude;

@JsonInclude(JsonInclude.Include.NON_NULL)
public class MTRWebResponse {
	private String message;
	private String responseCode;
	private String serviceLevelMsg;
	private String dataLevelMsg;

	/**
	 * @return the message
	 */
	public String getMessage() {
		return message;
	}

	/**
	 * @param message
	 *            the message to set
	 */
	public void setMessage(String message) {
		this.message = message;
	}

	/**
	 * @return the responseCode
	 */
	public String getResponseCode() {
		return responseCode;
	}

	/**
	 * @param responseCode
	 *            the responseCode to set
	 */
	public void setResponseCode(String responseCode) {
		this.responseCode = responseCode;
	}

	public String getServiceLevelMsg() {
		return serviceLevelMsg;
	}

	public void setServiceLevelMsg(String serviceLevelMsg) {
		this.serviceLevelMsg = serviceLevelMsg;
	}

	public String getDataLevelMsg() {
		return dataLevelMsg;
	}

	public void setDataLevelMsg(String dataLevelMsg) {
		this.dataLevelMsg = dataLevelMsg;
	}

}
