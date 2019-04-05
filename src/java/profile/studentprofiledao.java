/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package profile;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import login.ConnectionManager;


/**
 *
 * @author root
 */
public class studentprofiledao {
    static Connection connection = null;
     static ResultSet rs = null;
     public static int run =0;
     static PreparedStatement stmt = null;
     static boolean data = false;
     
     public static studentprofilebean viewprofile(studentprofilebean bean) throws ClassNotFoundException{
         
            String regno = bean.getRegNo();
            
           
            //from db 
            String firstName = null;
            String lastName = null;
            String registrationdate = null;
            String email = null;
            String phoneNo = null;
            
            String query = "SELECT * FROM student WHERE regNo=?";
            //String Upadate = "UPDATE student_auth SET pass=?, salt=? WHERE u_name = ?";
            
            try{
                connection = ConnectionManager.getConnect();
                stmt = connection.prepareStatement(query);
                stmt.setString(1, regno);          
                rs = stmt.executeQuery();
                data = rs.next();
                                         
                firstName = rs.getString("fName");
                lastName = rs.getString("lName");
                registrationdate = rs.getString("day");
                email = rs.getString("email");
                phoneNo = rs.getString("phoneNo");
                System.out.println("Fetched Data successful");
                System.out.println("Names :" + firstName + " "+ lastName);
                System.out.println("date "+ registrationdate);
                System.out.println("email :"+ email);
                System.out.println("phone :"+ phoneNo);
                
                bean.setF_name(firstName);
                bean.setL_name(lastName);
                bean.setDateofregistration(registrationdate);
                bean.setPhone(phoneNo);
                bean.setEmail(email);                                      
                     
            }catch(SQLException ex){
            System.out.println("failed there are some errors: "+ ex);
                        
        }
            
            // some more exceptions
        finally{
         if(rs!=null){
             try{
                 rs.close();
             }catch(Exception ex2){}
                 rs = null;
                        
        }
        if(stmt != null ){
            try{
                stmt.close();
            }catch(Exception ex2){}
            stmt = null;
        }
        
        if (connection != null ){
              try{
                connection.close();
            }catch(Exception ex3){}
            connection = null;
        }
        }
         return bean;
     }
    
}
