package com.mobitel.mtktweb.entity;

public class MTRSchedule {
    private int scheduleCode;
    private String scheduleStat;
    private String openedDate;
    private String closedBy;
    private String closedDate;

    public int getScheduleCode() {
        return scheduleCode;
    }

    public void setScheduleCode(int scheduleCode) {
        this.scheduleCode = scheduleCode;
    }

    public String getScheduleStat() {
        return scheduleStat;
    }

    public void setScheduleStat(String scheduleStat) {
        this.scheduleStat = scheduleStat;
    }

    public String getOpenedDate() {
        return openedDate;
    }

    public void setOpenedDate(String openedDate) {
        this.openedDate = openedDate;
    }

    public String getClosedBy() {
        return closedBy;
    }

    public void setClosedBy(String closedBy) {
        this.closedBy = closedBy;
    }

    public String getClosedDate() {
        return closedDate;
    }

    public void setClosedDate(String closedDate) {
        this.closedDate = closedDate;
    }
}
