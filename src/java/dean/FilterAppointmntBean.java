
package dean;

/**
 *
 * @author root
 */
public class FilterAppointmntBean {
    
  
    private String appId, date,time,etime,counsNo,regNo,from,to;
    
    
     public FilterAppointmntBean(String appId, String date,String time, String etime, String counsNo, String regNo) {
        this.appId = appId;
        this.date = date;
        this.time = time;
        this.etime = etime;
        this.counsNo = counsNo;
        this.regNo = regNo;
    }
    
     public FilterAppointmntBean(){
         
     }
   

    public String getFrom() {
        return from;
    }

    public String getTo() {
        return to;
    }

    public void setFrom(String from) {
        this.from = from;
    }

    public void setTo(String to) {
        this.to = to;
    }

    public void setAppId(String appId) {
        this.appId = appId;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public void setEtime(String etime) {
        this.etime = etime;
    }

    public void setCounsNo(String counsNo) {
        this.counsNo = counsNo;
    }

    public void setRegNo(String regNo) {
        this.regNo = regNo;
    }

    public String getAppId() {
        return appId;
    }

    public String getDate() {
        return date;
    }

    public String getTime() {
        return time;
    }

    public String getEtime() {
        return etime;
    }

    public String getCounsNo() {
        return counsNo;
    }

    public String getRegNo() {
        return regNo;
    }

       
    
}
