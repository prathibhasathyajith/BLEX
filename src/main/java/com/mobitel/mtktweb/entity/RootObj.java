package com.mobitel.mtktweb.entity;

import java.util.List;

public class RootObj {
	private List<MTRTrain> forwardTrain;
	private List<MTRTrain> returnTrain;
	
	public List<MTRTrain> getForwardTrain() {
		return forwardTrain;
	}

	public void setForwardTrain(List<MTRTrain> forwardTrain) {
		this.forwardTrain = forwardTrain;
	}

	public List<MTRTrain> getReturnTrain() {
		return returnTrain;
	}

	public void setReturnTrain(List<MTRTrain> returnTrain) {
		this.returnTrain = returnTrain;
	}
}
