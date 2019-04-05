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
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import login.ConnectionManager;

public class DeanManageCounsellorDAO{

    public static ArrayList<DeanManageCounsellorBean> getAllRecords() {
      
        ArrayList<DeanManageCounsellorBean> list = new ArrayList<DeanManageCounsellorBean>();

        try {
            Connection con = ConnectionManager.getConnect();
            PreparedStatement ps = con.prepareStatement("select counsNo,name,email,phoneNo, gender from counsellor");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                
                String counsno = rs.getString("counsNo");
                String fname = rs.getString("name");
                String email = rs.getString("email");
                String phone = rs.getString("phoneNo");
                String gender = rs.getString("gender");
                
                DeanManageCounsellorBean u = new DeanManageCounsellorBean(counsno,fname,email,phone,gender);
                list.add(u);
            }
            
            System.out.println(list);
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }

    }