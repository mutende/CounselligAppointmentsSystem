/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package student;

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


public class Bookdao {
    
    static PreparedStatement stmt = null;
    static Connection connection = null;
    static int check = 0;
    
    public static BookBean boookAppointment(BookBean bn){
     
        String bookdate = bn.getAppointmentDate();
        String startTime  = bn.getAppointmentTime();
        String student = bn.getStudent();
        String couns = bn.getCounselor();
        int sessionTm = 45;
        
        SimpleDateFormat tmformat = new SimpleDateFormat("HH:mm:ss");
                
        Date time = null;
       
        
        try {
            time = tmformat.parse(startTime);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        
        // creates calendar
        Calendar cal = Calendar.getInstance(); 

        // sets calendar time/date
        cal.setTime(time);                      

        cal.add(Calendar.MINUTE, sessionTm);
       
        String endTime = tmformat.format(cal.getTime());
        
        //System.out.println(dateobj.plusDays(dys));
        
         System.out.println("time added " +endTime);
         
         String bookquery = "INSERT INTO appointment(date,time,etime,counsNo,regNo) VALUES(?,?,?,?,?)";

        try {
            connection = ConnectionManager.getConnect();
             stmt = connection.prepareStatement(bookquery);
             stmt.setString(1, bookdate);
             stmt.setString(2, startTime);
             stmt.setString(3, endTime);
             stmt.setString(4, couns);
             stmt.setString(5, student);
             
             System.out.println("Book date "+bookdate);
             System.out.println("Start at "+startTime+" after "+ sessionTm + " end session at "+endTime);
             System.out.println("Session for "+student);
             System.out.println("To see "+couns);
             
             check = stmt.executeUpdate();
             
             if(check == 1){
                 bn.setCorrect(true);
             }else{
                 bn.setCorrect(false);
             }
             connection.close();
             stmt.close();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Bookdao.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(Bookdao.class.getName()).log(Level.SEVERE, null, ex);
        }
       
        return bn;
    }
}
