/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dean;



public class DeanManageCounsellorBean {

    public DeanManageCounsellorBean(String counsNo, String name, String email, String phoneNo, String gender) {
        this.counsNo = counsNo;
        this.name = name;
        this.email = email;
        this.phoneNo = phoneNo;
        this.gender = gender;
    }

   private String counsNo,name,email, phoneNo, gender;

    public String getCounsNo() {
        return counsNo;
    }

    public void setCounsNo(String counsNo) {
        this.counsNo = counsNo;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhoneNo() {
        return phoneNo;
    }

    public void setPhoneNo(String phoneNo) {
        this.phoneNo = phoneNo;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    @Override
    public String toString() {
        return "DeanManageCounsellorBean{" + "counsNo=" + counsNo + ", name=" + name + ", email=" + email + ", phoneNo=" + phoneNo + ", gender=" + gender + '}';
    }

    
}