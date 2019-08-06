package com.mobitel.mtktweb.entity;

import java.util.List;

public class MTRTrain {
    private MTRSchedule schedule;
    private int refNo;
    private int trainCode;
    private String trainName;
    private String startPoint;
    private String endPoint;
    private String arrDate;
    private String depDate;
    private String sourceFromTime;
    private String sourceToTime;
    private String arrivalTime;
    private String depTime;
    private String trainStatus;
    private List<MTRClass> classList;
    private boolean removed;

    
    public MTRSchedule getSchedule() {
        return schedule;
    }

    public void setSchedule(MTRSchedule schedule) {
        this.schedule = schedule;
    }

    public int getRefNo() {
        return refNo;
    }

    public void setRefNo(int refNo) {
        this.refNo = refNo;
    }

    public int getTrainCode() {
        return trainCode;
    }

    public void setTrainCode(int trainCode) {
        this.trainCode = trainCode;
    }

    public String getTrainName() {
        return trainName;
    }

    public void setTrainName(String trainName) {
        this.trainName = trainName;
    }

    public String getStartPoint() {
        return startPoint;
    }

    public void setStartPoint(String startPoint) {
        this.startPoint = startPoint;
    }

    public String getEndPoint() {
        return endPoint;
    }

    public void setEndPoint(String endPoint) {
        this.endPoint = endPoint;
    }

    public String getArrDate() {
        return arrDate;
    }

    public void setArrDate(String arrDate) {
        this.arrDate = arrDate;
    }

    public String getDepDate() {
        return depDate;
    }

    public void setDepDate(String depDate) {
        this.depDate = depDate;
    }

    public String getSourceFromTime() {
        return sourceFromTime;
    }

    public void setSourceFromTime(String sourceFromTime) {
        this.sourceFromTime = sourceFromTime;
    }

    public String getSourceToTime() {
        return sourceToTime;
    }

    public void setSourceToTime(String sourceToTime) {
        this.sourceToTime = sourceToTime;
    }

    public String getArrivalTime() {
        return arrivalTime;
    }

    public void setArrivalTime(String arrivalTime) {
        this.arrivalTime = arrivalTime;
    }

    public String getDepTime() {
        return depTime;
    }

    public void setDepTime(String depTime) {
        this.depTime = depTime;
    }

    public String getTrainStatus() {
        return trainStatus;
    }

    public void setTrainStatus(String trainStatus) {
        this.trainStatus = trainStatus;
    }

    public List<MTRClass> getClassList() {
        return classList;
    }

    public void setClassList(List<MTRClass> classList) {
        this.classList = classList;
    }

    public boolean isRemoved() {
        return removed;
    }

    public void setRemoved(boolean removed) {
        this.removed = removed;
    }
}
