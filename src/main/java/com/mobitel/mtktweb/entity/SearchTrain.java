package com.mobitel.mtktweb.entity;

public class SearchTrain {
    private String fromStation;
    private String toStation;
    private String date;
    private String withReturn;
    private int numberOfPassenger;
    private String returnDate;

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

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getWithReturn() {
        return withReturn;
    }

    public void setWithReturn(String withReturn) {
        this.withReturn = withReturn;
    }

    public int getNumberOfPassenger() {
        return numberOfPassenger;
    }

    public void setNumberOfPassenger(int numberOfPassenger) {
        this.numberOfPassenger = numberOfPassenger;
    }

    public String getReturnDate() {
        return returnDate;
    }

    public void setReturnDate(String returnDate) {
        this.returnDate = returnDate;
    }
}
