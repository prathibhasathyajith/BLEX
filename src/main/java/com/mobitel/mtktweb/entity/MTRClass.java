package com.mobitel.mtktweb.entity;

import java.util.List;

public class MTRClass {
	private int classCode;
	private int classCat;
	private String className;
	private String classABBR;
	private String addedDate;
	private String classStatus;
	private List<MTRCompartment> compList;
	private int blockedSeats;
	private int reservedSeats;
	private int availableSeats;
	private int totalSeats;

	public int getClassCode() {
		return classCode;
	}

	public void setClassCode(int classCode) {
		this.classCode = classCode;
	}

	public int getClassCat() {
		return classCat;
	}

	public void setClassCat(int classCat) {
		this.classCat = classCat;
	}

	public String getClassName() {
		return className;
	}

	public void setClassName(String className) {
		this.className = className;
	}

	public String getClassABBR() {
		return classABBR;
	}

	public void setClassABBR(String classABBR) {
		this.classABBR = classABBR;
	}

	public String getAddedDate() {
		return addedDate;
	}

	public void setAddedDate(String addedDate) {
		this.addedDate = addedDate;
	}

	public String getClassStatus() {
		return classStatus;
	}

	public void setClassStatus(String classStatus) {
		this.classStatus = classStatus;
	}

	public List<MTRCompartment> getCompList() {
		return compList;
	}

	public void setCompList(List<MTRCompartment> compList) {
		this.compList = compList;
	}

	public int getBlockedSeats() {
		return blockedSeats;
	}

	public void setBlockedSeats(int blockedSeats) {
		this.blockedSeats = blockedSeats;
	}

	public int getReservedSeats() {
		return reservedSeats;
	}

	public void setReservedSeats(int reservedSeats) {
		this.reservedSeats = reservedSeats;
	}

	public int getAvailableSeats() {
		return availableSeats;
	}

	public void setAvailableSeats(int availableSeats) {
		this.availableSeats = availableSeats;
	}

	public int getTotalSeats() {
		return totalSeats;
	}

	public void setTotalSeats(int totalSeats) {
		this.totalSeats = totalSeats;
	}
}
