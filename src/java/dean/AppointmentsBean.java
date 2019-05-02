/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dean;

/**
 *
 * @author Alex
 */
public class AppointmentsBean {
     private String appId;
    private String date,time,etime,counsNo,regNo;

    public AppointmentsBean(String appId, String date,String time, String etime, String counsNo, String regNo) {
        this.appId = appId;
        this.date = date;
        this.time = time;
        this.etime = etime;
        this.counsNo = counsNo;
        this.regNo = regNo;
    }
    

    public String getAppId() {
        return appId;
    }

    public void setAppId(String appId) {
        this.appId = appId;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getEtime() {
        return etime;
    }

    public void setEtime(String etime) {
        this.etime = etime;
    }

    public String getCounsNo() {
        return counsNo;
    }

    public void setCounsNo(String counsNo) {
        this.counsNo = counsNo;
    }

    public String getRegNo() {
        return regNo;
    }

    public void setRegNo(String regNo) {
        this.regNo = regNo;
    }

    @Override
    public String toString() {
        return "AppointmentsBean{" + "appId=" + appId + ", date=" + date + ", time=" + time + ", etime=" + etime + ", counsNo=" + counsNo + ", regNo=" + regNo + '}';
    }
    
}
