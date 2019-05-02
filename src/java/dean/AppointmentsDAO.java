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
 * @author Alex
 */
public class AppointmentsDAO {
   public static ArrayList<AppointmentsBean> getAllAppoints() {
      
        ArrayList<AppointmentsBean> list1 = new ArrayList<AppointmentsBean>();

        try {
            Connection con = ConnectionManager.getConnect();
            PreparedStatement ps = con.prepareStatement("select appId, date, time,eTime, counsNo, regNo from appointment");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                
                int appid = rs.getInt("appId");
                String dt = rs.getString("date");
                String tm = rs.getString("time");
                String etm = rs.getString("eTime");
                String couns = rs.getString("counsNo");
                String reg = rs.getString("regNo");
                
                String ids = Integer.toString(appid);
                
                AppointmentsBean t = new AppointmentsBean(ids,dt,tm,etm,couns,reg);
                list1.add(t);
            }
            
            System.out.println(list1);
        } catch (Exception e) {
            System.out.println(e);
        }
        return list1;
    }
    
}
