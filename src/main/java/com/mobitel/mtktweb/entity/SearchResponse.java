package com.mobitel.mtktweb.entity;

import java.util.List;

public class SearchResponse {

	String message;
	String responseCode;
	RootObj obj;

	public RootObj getObj() {
		return obj;
	}

	public void setObj(RootObj obj) {
		this.obj = obj;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String getResponseCode() {
		return responseCode;
	}

	public void setResponseCode(String responseCode) {
		this.responseCode = responseCode;
	}

}
