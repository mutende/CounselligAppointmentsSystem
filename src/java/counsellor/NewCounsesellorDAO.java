/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package counsellor;

/**
 *
 * @author root
 */
import java.sql.*;
import login.ConnectionManager;
import passwordhashanddecrytp.EncryptAndDecrypt;

public class NewCounsesellorDAO {
    static Connection connection = null;
     static ResultSet rs = null;
     public static int run =0;
     
     public static NewCounsellorBean signup( NewCounsellorBean bean) throws ClassNotFoundException{
          PreparedStatement insert = null;
          
         
         
         String username = bean.getCounsNo();
         String fullname = bean.getFullName();
         String email = bean.getEmail();
         String gender = bean.getGender();
         String phone = bean.getPhone();
         String status = bean.getStatus();
         String counsNo = bean.getCounsNo();
         String password = bean.getPassword();
         String confirm_password = bean.getConfirm_password();
          
         String salt= EncryptAndDecrypt.getSalt(30);
         String securePass = EncryptAndDecrypt.generateSecurePassword(password, salt);
            System.out.println("User Name: " +username);
            System.out.println("Full Name: " +fullname);
            System.out.println("Email: " +email);
            System.out.println("gender: " +gender);
            System.out.println("Phone: " +phone);
            System.out.println("Status: " +status);
            System.out.println("CounseNo: "+counsNo);
            System.out.println("Password: "+password);
         
        
         String insertQueryCounsellor = "INSERT INTO counsellor (counsNo,name,email,phoneNo,gender,password,salt,day) VALUES (?,?,?,?,?,?,?,NOW())";
         
         if(!password.equals(confirm_password)){
             bean.setValid(false);
             System.out.println("Password match error");
         }else{
             
                    try{


                        connection = ConnectionManager.getConnect();


                           insert = connection.prepareStatement(insertQueryCounsellor);

                           insert.setString(2, fullname);
                           insert.setString(3, email);
                           insert.setString(5, gender);
                           insert.setString(4, phone);
                           //insert.setString(5, status);
                           insert.setString(1, counsNo);
                           insert.setString(6, securePass);
                           insert.setString(7, salt);

                        run = insert.executeUpdate();

                        if(run == 1){
                             bean.setValid(true);
                             System.out.println("Data send to db");
                        }else{
                           bean.setValid(false);
                            System.out.println("Failed to send data");
                        }

                    }catch(SQLException e){

                        System.out.println("Insert Error: "+ e);
                    }
         }
         return bean;
     }
    
}

    
