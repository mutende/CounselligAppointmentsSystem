/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package login;

import java.sql.*;

public class ConnectionManager {
    
    static Connection con;
    
   
    
    public static Connection getConnect() throws ClassNotFoundException, SQLException {
        
      
        
        Class.forName("com.mysql.jdbc.Driver");
        
        String  url = "jdbc:mysql://localhost:3306/codebloode";
        
        //String url = "jdbc:mysql://remotemysql.com:3306/kPvBudAgBb";
        
        try{



          // con = DriverManager.getConnection(url, "kPvBudAgBb", "Q4lI6itgDh");




            con = DriverManager.getConnection(url, "mutende", "m0910");
            
        }
        catch(SQLException ex){
            String message = ex.getMessage();
            System.out.println(message);
        }
        
        return con;
        
    }
    
}
