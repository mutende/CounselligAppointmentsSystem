/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package counsellor;

/**
 *
 * @author root
 */
public class SetSecheduleBean {
 private int hours;
 private int days;
 private String dateaway;
 private String timeaway;
 private String reason;
 private String counselor;
 public boolean valid;

    public String getCounselor() {
        return counselor;
    }

    public void setCounselor(String counselor) {
        this.counselor = counselor;
    }
 

    public int getHours() {
        return hours;
    }

    public void setHours(int hours) {
        this.hours = hours;
    }

    public int getDays() {
        return days;
    }

    public void setDays(int days) {
        this.days = days;
    }

    public String getDateaway() {
        return dateaway;
    }

    public void setDateaway(String dateaway) {
        this.dateaway = dateaway;
    }

    public String getTimeaway() {
        return timeaway;
    }

    public void setTimeaway(String timeaway) {
        this.timeaway = timeaway;
    }

    public String getReason() {
        return reason;
    }

    public void setReason(String reason) {
        this.reason = reason;
    }

    public boolean isValid() {
        return valid;
    }

    public void setValid(boolean valid) {
        this.valid = valid;
    }
 
  
}
