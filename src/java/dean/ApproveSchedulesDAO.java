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
public class ApproveSchedulesDAO {
    public static ArrayList<ApproveSchedulesBean> getAllSchedules(){
      
        ArrayList<ApproveSchedulesBean> list2 = new ArrayList<ApproveSchedulesBean>();

        try {
            Connection con = ConnectionManager.getConnect();
            PreparedStatement ps = con.prepareStatement("select * from scheduling order by dateAway DESC limit 0,5");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                
                int schId = rs.getInt("scheduleId");
                String counsno = rs.getString("counsNo");
                String dtaway = rs.getString("dateAway");
                String tmaway = rs.getString("timeAway");
                String dtback = rs.getString("dateBack");
               String tmback = rs.getString("timeBack");
                String reason = rs.getString("reason");
                String approve = rs.getString("approval");
                
                String newid = Integer.toString(schId);
                ApproveSchedulesBean b = new ApproveSchedulesBean(newid,counsno,dtaway,tmaway,dtback,tmback,reason,approve);
                list2.add(b);
            }
            
            System.out.println(list2);
        } catch (Exception e) {
            System.out.println(e);
        }
        return list2;
    }

    }