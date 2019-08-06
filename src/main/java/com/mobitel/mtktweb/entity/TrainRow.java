package com.mobitel.mtktweb.entity;

public class TrainRow {
    private String name;
    private String code;
    private String fromStation;
    private String toStation;
    private String sourceFromTime;
    private String endToTime;
    private String dTime;
    private String aTime;
    private String classCode;
    private String available;
    private String price;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getFromStation() {
        return fromStation;
    }

    public void setFromStation(String fromStation) {
        this.fromStation = fromStation;
    }

    public String getToStation() {
        return toStation;
    }

    public void setToStation(String toStation) {
        this.toStation = toStation;
    }

    public String getdTime() {
        return dTime;
    }

    public void setdTime(String dTime) {
        this.dTime = dTime;
    }

    public String getaTime() {
        return aTime;
    }

    public void setaTime(String aTime) {
        this.aTime = aTime;
    }

    public String getClassCode() {
        return classCode;
    }

    public void setClassCode(String classCode) {
        this.classCode = classCode;
    }

    public String getAvailable() {
        return available;
    }

    public void setAvailable(String available) {
        this.available = available;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getSourceFromTime() {
        return sourceFromTime;
    }

    public void setSourceFromTime(String sourceFromTime) {
        this.sourceFromTime = sourceFromTime;
    }

    public String getEndToTime() {
        return endToTime;
    }

    public void setEndToTime(String endToTime) {
        this.endToTime = endToTime;
    }
}
