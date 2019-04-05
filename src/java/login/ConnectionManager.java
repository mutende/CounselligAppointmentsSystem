/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package login;

import java.sql.*;
import java.util.*;

public class ConnectionManager {
    
    static Connection con;
   
    
    public static Connection getConnect() throws ClassNotFoundException, SQLException {
        
      
        
        Class.forName("com.mysql.jdbc.Driver");
        
        String  url = "jdbc:mysql://localhost:3306/codebloode";
        
        try{



           //con = DriverManager.getConnection(url, "root", "@elvis");




            con = DriverManager.getConnection(url, "root", "@elvis$");
            
        }
        catch(Exception ex){
            ex.printStackTrace();
        }
        
        return con;
        
    }
    
}
