/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package counsellor;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import login.ConnectionManager;

/**
 *
 * @author root
 */
public class ScheduleDAO {
    
   static Connection currentCon = null;
   public static int num = 0;
    
   static PreparedStatement stmt = null;
   public static  String approval = "no";

public static SetSecheduleBean setSechedule(SetSecheduleBean bn) throws ClassNotFoundException{
 
        String dtaway = bn.getDateaway();
        String timeaway = bn.getTimeaway();
        int hrs = bn.getHours();
        int dys = bn.getDays();
        String rsn = bn.getReason();
        String counselor = bn.getCounselor();
        SimpleDateFormat tmformat = new SimpleDateFormat("HH:mm:ss");
        SimpleDateFormat dtformat = new SimpleDateFormat("yyy-MM-dd");
        
        Date date = null;
        Date time = null;
        
        try {
                time = tmformat.parse(timeaway);
                date = dtformat.parse(dtaway);
            } catch (ParseException e) {
                e.printStackTrace();
            }
                String formattedTime = tmformat.format(time);
        String formatteddate = dtformat.format(date);
        
        org.joda.time.format.DateTimeFormatter formatter = org.joda.time.format.DateTimeFormat.forPattern( "yyyy-MM-dd" );
        org.joda.time.DateTime dateobj = formatter.withZoneUTC().parseDateTime(dtaway);
        String plusdays = org.joda.time.format.ISODateTimeFormat.date().print( dateobj.plusDays(dys)) ;
        System.out.println("date added "+plusdays);
        
        
        // creates calendar
        Calendar cal = Calendar.getInstance(); 

        // sets calendar time/date
        cal.setTime(time);                      

        cal.add(Calendar.HOUR_OF_DAY, hrs);
       
        String plustime = tmformat.format(cal.getTime());
        
        //System.out.println(dateobj.plusDays(dys));
        
         System.out.println("time added " +plustime);
      
        
        String sql = "INSERT INTO scheduling (counsNo,dateAway,timeAway,dateBack,timeBack,reason,approval) VALUES (?,?,?,?,?,?,?)";
       
        
        try {
            currentCon = ConnectionManager.getConnect();
            
            stmt = currentCon.prepareStatement(sql);
            stmt.setString(1, counselor);
            stmt.setString(2, dtaway);
            stmt.setString(3, timeaway);
            stmt.setString(6, rsn);
            stmt.setString(4,plusdays );
            stmt.setString(5,plustime );
            stmt.setString(7, approval);
            
           
             num = stmt.executeUpdate();
             
             if(num == 1){
                 bn.setValid(true);
             }
             else{
                 bn.setValid(false);
             }
              stmt.close();
             
             currentCon.close();
                     
                   
        } catch (SQLException ex) {
            
            Logger.getLogger(ScheduleDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    return bn;
}
        
}