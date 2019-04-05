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
import passwordhashanddecrytp.EncryptAndDecrypt;
public class ChangePasswordDao {
    
     static Connection connection = null;
     static ResultSet rs = null;
     public static int run =0;
     static PreparedStatement stmt = null;
     static boolean data = false;
     
     public static ChangePasswordBean changepass(ChangePasswordBean bean) throws ClassNotFoundException{
            String oldpass = bean.getOldPassword();
            String pass1 = bean.getNewPassword1();
            String regno = bean.getRegNo();
            
            String dbpass =null;
            String dbsalt = null;
            
            String query = "SELECT * FROM student WHERE regNo=?";
            String Upadate = "UPDATE student SET password=?, salt=? WHERE regNo = ?";
            
            try{
                connection = ConnectionManager.getConnect();
                stmt = connection.prepareStatement(query);
                stmt.setString(1, regno);          
                rs = stmt.executeQuery();
                 data = rs.next();
                   if(!data){
                       System.out.println("wrong user");
                       bean.setValid(false);
                   }else{
                       dbpass = rs.getString("password");
                       dbsalt = rs.getString("salt");
                       System.out.println("Fetched Data successful");
                       boolean verifyPass = EncryptAndDecrypt.verifyUserPassword(oldpass, dbpass, dbsalt);
                       
                       if(!verifyPass){
                           bean.setValid(false);
                           System.out.println("password match fail");
                       }else{
                           System.out.println("password matched trying to update pass ...");
                           //update query
                            stmt = connection.prepareStatement(Upadate);
                            
                            String salt= EncryptAndDecrypt.getSalt(30);
                            String securePass = EncryptAndDecrypt.generateSecurePassword(pass1, salt);
                            
                             stmt.setString(1, securePass); 
                             stmt.setString(2, salt); 
                             stmt.setString(3, regno);
                             
                             run = stmt.executeUpdate();
                             
                             if(run != 1){
                                 System.out.println("failed to update");
                                 bean.setValid(false);
                             }else{
                                 System.out.println("update done");
                                 bean.setValid(true);
                             }
                             
                            
                       }
                   }
                
            }catch(SQLException ex){
            System.out.println("failed there are some errors: "+ ex);
             bean.setValid(false);
            
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
