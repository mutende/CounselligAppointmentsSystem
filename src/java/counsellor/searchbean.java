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
public class searchbean {
    
    public boolean controller;
    private String dates;
    private String counselor;
    private  String stident;
    private String starttime;
    private String endtime;
    

    public String getStarttime() {
        return starttime;
    }

    public void setStarttime(String starttime) {
        this.starttime = starttime;
    }

    public String getEndtime() {
        return endtime;
    }

    public void setEndtime(String endtime) {
        this.endtime = endtime;
    }

    public searchbean(String dates, String counselor, String stident, String starttime, String endtime) {
        this.dates = dates;
        this.counselor = counselor;
        this.stident = stident;
        this.starttime = starttime;
        this.endtime = endtime;
    }
    
    
    public searchbean() {
       
    }

    public String getDates() {
        return dates;
    }

    public void setDate(String Date) {
        this.dates = Date;
    }

    public String getCounselor() {
        return counselor;
    }

    

    public void setCounselor(String counselor) {
        this.counselor = counselor;
    }

    public String getStident() {
        return stident;
    }

    public void setStident(String stident) {
        this.stident = stident;
    }
    
    
    
    @Override
    public String toString() {
        return "searchbean{" + "Dates=" + dates + ", counselor=" + counselor + ", stident=" + stident + ", starttime=" +starttime+ ",endtime = " +endtime+ '}';
    }
    
    
}
