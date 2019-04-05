/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package student;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import login.ConnectionManager;

public class addDatedao {
    static Connection connection = null;
    static PreparedStatement stmt = null;
    static ResultSet rs = null;
    static int run =0;
    
    public static ArrayList<addDateBean> listofCounsellors(String appDate, String appTime){
        System.out.println("DAO RUNNING.....");
        ArrayList<addDateBean> counselors = new ArrayList();
//        addDateBean getdttm = new addDateBean();
//        String appDate = getdttm.getDt();
//        String appTime = getdttm.getTm();
        
        System.out.println(" Time from servlet "+appTime);
        System.out.println("Date from servlet "+ appDate);
        //add 45min to time
        SimpleDateFormat tmformat = new SimpleDateFormat("HH:mm:ss");
        Date time = null;
             try {
                time = tmformat.parse(appTime);
               
            } catch (ParseException e) {
                e.printStackTrace();
            }
             
              // creates calendar
        Calendar cal = Calendar.getInstance(); 

        // sets calendar time/date
        cal.setTime(time);                      
        int hrs = 45;
        cal.add(Calendar.MINUTE, hrs);
       
        String plustime = tmformat.format(cal.getTime());
        
        //System.out.println(dateobj.plusDays(dys));
        
         System.out.println("Time added  45 min" +plustime);
        
        System.out.println("from bean date "+appDate+" and time "+appTime);
        String approval = "yes";
        
       // String search = "SELECT counsNo FROM (SELECT counsNo FROM scheduling WHERE scheduling.approval='no' UNION SELECT counsNo from appointment) counsellor;";
        
       String search = " SELECT counsNo FROM counsellor WHERE counsNo NOT IN("
               + " SELECT counsNo FROM scheduling WHERE `scheduling`.`approval` = ? AND ( `scheduling`.`dateAway` <= ? AND `scheduling`.`dateBack` >= ?)) AND"
               + " counsNo NOT IN( SELECT counsNo FROM appointment WHERE `appointment`.`date` = ? AND ((`appointment`.`time` BETWEEN ? AND ?) OR (`appointment`.`eTime` BETWEEN ? AND ?)))";
        try {
            connection = ConnectionManager.getConnect();
            stmt = connection.prepareStatement(search);
            //bind query parameters
            stmt.setString(1, approval);
            stmt.setString(2, appDate);
            stmt.setString(3, appDate);
//            stmt.setString(4,appTime);
//            stmt.setString(5,appTime);
            stmt.setString(4, appDate);
            stmt.setString(5,appTime);
            stmt.setString(6,plustime);
            stmt.setString(7,appTime);
            stmt.setString(8,plustime);
            
            rs= stmt.executeQuery();
            while(rs.next()){
                String couns = rs.getString("counsNo");
                addDateBean getcouns = new addDateBean(couns);
                counselors.add(getcouns);
            }
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(addDatedao.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(addDatedao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return counselors;
    }
    
    
    
    
}
