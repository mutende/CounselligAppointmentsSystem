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
public class ApproveSchedulesBean {
    String schId,counsNo,dtaway,taway,dtback,tback,reason,approve;

    public ApproveSchedulesBean(String schId, String counsNo, String dtaway,String taway, String dtback, String tback, String reason, String approve) {
        this.schId = schId;
        this.counsNo = counsNo;
        this.dtaway = dtaway;
        this.taway = taway;
        this.dtback = dtback;
        this.tback = tback;
        this.reason = reason;
        this.approve = approve;
    }
    

    public String getSchId() {
        return schId;
    }

    public void setSchId(String schId) {
        this.schId = schId;
    }

    public String getCounsNo() {
        return counsNo;
    }

    public void setCounsNo(String counsNo) {
        this.counsNo = counsNo;
    }

    public String getDtaway() {
        return dtaway;
    }

    public void setDtaway(String dtaway) {
        this.dtaway = dtaway;
    }

    public String getTaway() {
        return taway;
    }

    public void setTaway(String taway) {
        this.taway = taway;
    }

    public String getDtback() {
        return dtback;
    }

    public void setDtback(String dtback) {
        this.dtback = dtback;
    }

    public String getTback() {
        return tback;
    }

    public void setTback(String tback) {
        this.tback = tback;
    }

    public String getReason() {
        return reason;
    }

    public void setReason(String reason) {
        this.reason = reason;
    }

    public String getApprove() {
        return approve;
    }

    public void setApprove(String approve) {
        this.approve = approve;
    }

    @Override
    public String toString() {
        return "ApproveSchedulesBean{" + "schId=" + schId + ", counsNo=" + counsNo + ", dtaway=" + dtaway + ", taway=" + taway + ", dtback=" + dtback + ", tback=" + tback + ", reason=" + reason + ", approve=" + approve + '}';
    }
    
}
