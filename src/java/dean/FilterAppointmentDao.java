/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import login.ConnectionManager;

/**
 *
 * @author root
 */
public class FilterAppointmentDao {
     public static ArrayList<FilterAppointmntBean> getAllSchedules(){
      
        ArrayList<FilterAppointmntBean> data = new ArrayList<>();
        
        FilterAppointmntBean fromBean = new FilterAppointmntBean();
        
        String from = fromBean.getFrom();
        String to = fromBean.getTo();
        
         System.out.println("From Bean Dao"+from+ " and "+ to);

        try {
            Connection con = ConnectionManager.getConnect();
            PreparedStatement ps = con.prepareStatement("SELECT appId, date, time,eTime, counsNo, regNo from appointment WHERE date BETWEEN ? and ? order by date DESC");
            ps.setString(1, from);
            ps.setString(2, to);
            ResultSet rs = ps.executeQuery();
            System.out.println("Query ran...");
            while (rs.next()) {
                
                int appid = rs.getInt("appId");
                String dt = rs.getString("date");
                String tm = rs.getString("time");
                String etm = rs.getString("eTime");
                String couns = rs.getString("counsNo");
                String reg = rs.getString("regNo");
                
                String newid = Integer.toString(appid);
                FilterAppointmntBean b = new FilterAppointmntBean(newid,dt,tm,etm,couns,reg);
                data.add(b);
                
            }
            
            System.out.println(data);
        } catch (Exception e) {
            System.out.println(e);
        }
        return data;
    }

    
}
