
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package signup;


import java.sql.*;
import login.ConnectionManager;
import passwordhashanddecrytp.EncryptAndDecrypt;

public class NewUserDAO {
     static Connection connection = null;
     static ResultSet rs = null;
     public static int run =0;
     static PreparedStatement insert = null;
     static PreparedStatement insertdean = null;
     
     public static NewUserBean signup( NewUserBean bean) throws ClassNotFoundException{
        
          
         //dean and students
         
         String username = bean.getUsername();
         String password = bean.getPassword();
         String firstname = bean.getFirstName();
         String lastname = bean.getLastName();
         String pass2 = bean.getPass2();
         String email = bean.getEmail();
         String phone = bean.getPhone();
         
         
             
         String salt= EncryptAndDecrypt.getSalt(30);
         String securePass = EncryptAndDecrypt.generateSecurePassword(password, salt);
         
         
         String insertQuery = "INSERT INTO student(regNo,fName,lName, phoneNo,email,password,salt,day) VALUES (?,?,?,?,?,?,?,NOW())";
         //String deanQuery = "INSERT INTO dean (fName,lName,uName,email,phoneNo,password,salt,day)VALUES(?,?,?,?,?,?,?,NOW())";
         
         if(!password.equals(pass2))
         {
             
              bean.setValid(false);
             
         }else
         {
             
                try{


                    connection = ConnectionManager.getConnect();


                       insert = connection.prepareStatement(insertQuery);
//                       insertdean = connection.prepareStatement(deanQuery);
//                        
//                       //dean
//                       insertdean.setString(1, firstname);
//                       insertdean.setString(2, lastname);
//                       insertdean.setString(3, username);
//                       insertdean.setString(4, email);
//                       insertdean.setString(5,phone);
//                       insertdean.setString(6, securePass);
//                       insertdean.setString(7, salt);
//                       
                       //student
                      insert.setString(2, firstname);  
                      insert.setString(3, lastname);
                      insert.setString(1, username);
                      insert.setString(6, securePass);
                      insert.setString(7, salt);
                      insert.setString(5, email);
                      insert.setString(4, phone);
                      
                      run = insert.executeUpdate();
                 //   run = insertdean.executeUpdate();

                    if(run == 1){

                            bean.setValid(true);



                    }else{
                       bean.setValid(false);
                    }

                }catch(SQLException e){



                    System.out.println("Insert Error: "+ e);
                }
                
                finally{
                    if(rs != null){
                        try{
                            rs.close();
                        }catch(Exception ex1){
                            rs = null;
                        }
                     if(connection != null){
                         try{
                             connection.close();
                         }catch(Exception ex2){
                             connection =null;
                         }
                     }
                     if(insert != null){
                         try{
                             insert.close();
                         }catch(Exception ex3){
                             insert =null;
                         }
                     }
                    }
                }
         }
         return bean;
     }
     
     
     
     public static boolean searchuser(String uname, String tablefld, String table)throws ClassNotFoundException, SQLException{
         boolean exist;
         String searchquery = "SELECT * FROM "+table+" WHERE "+tablefld+"=?";
     
          connection = ConnectionManager.getConnect();
          insert = connection.prepareStatement(searchquery);
          insert.setString(1, uname);
           rs = insert.executeQuery();
           
           exist = rs.next();
           
           if(exist){
               
               exist = true;
           }else{
               exist = false;
           }
           
           rs.close();
           insert.close();
           connection.close();
           
         return exist;
         
     }
    
}
