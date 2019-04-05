/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package login;

import java.text.*;
import java.util.*;
import java.sql.*;
import passwordhashanddecrytp.EncryptAndDecrypt;

public class UserDAO {
    
    static Connection currentCon = null;
    static ResultSet rs = null;
    
    public static UserBean login(UserBean bean) throws ClassNotFoundException{
        
       
        //prepare  objects for connection
        PreparedStatement stmt = null;
        
        String username = bean.getUsername();
        String password = bean.getPassword();
        String client = bean.getClient();
        
        //from db
        String firstName=null;
        String lastName=null;
        String pwd=null;
        String salt=null;
        String fullName=null;

            
       
        String auth_student = "SELECT * FROM student WHERE regNo=?";
        String auth_counsellor = "SELECT * FROM counsellor where counsNo = ?";
        String auth_dean = "SELECT * FROM dean where uName = ? ";
               
        
        try{
            //connect to database
            
            currentCon = ConnectionManager.getConnect();
            
            if(client.equals("student")){
                stmt = currentCon.prepareStatement(auth_student);
            }else
               if(client.equals("counsellor")){
                    stmt = currentCon.prepareStatement(auth_counsellor);
                }else{
                   stmt = currentCon.prepareStatement(auth_dean);
               }
            
            stmt.setString(1, username);          
            rs = stmt.executeQuery();
            
            boolean more = rs.next();
            
            //if there are no users in the database
            if(!more){
                bean.setValid(false);
                
            }else{                
                
                if(client.equals("student")){
                        //student
                    firstName= rs.getString("fName");
                    lastName = rs.getString("lName");
                    pwd = rs.getString("password");
                    salt = rs.getString("salt");
                    
                }else
                    if(client.equals("counsellor")){
                        //counsellor
                    fullName= rs.getString("name");
                    pwd = rs.getString("password");
                    salt = rs.getString("salt");
                        
                    }else{
                        //dean
                    firstName= rs.getString("fName");
                    lastName = rs.getString("lName");
                    pwd = rs.getString("password");
                    salt = rs.getString("salt");
                    
                    }
                   
                boolean verifyPass = EncryptAndDecrypt.verifyUserPassword(password, pwd, salt);

                if(verifyPass){
                     bean.setFirstName(firstName);
                     bean.setLastName(lastName);
                     bean.setFullName(fullName);
                     bean.setValid(true);
                }else{
                     bean.setValid(false);                   
                }
               
            }
        }
        catch(SQLException ex){
            System.out.println("Login failed there are some errors: "+ ex);
             bean.setValid(false);
            
        }
         //close exception
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
        
        if (currentCon != null ){
              try{
                currentCon.close();
            }catch(Exception ex3){}
            currentCon = null;
        }
        }
         
        return bean;
    }
    
}
