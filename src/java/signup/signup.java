/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package signup;

import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 *
 * @author root
 */
public class signup extends HttpServlet {
    
    boolean existinguser = true;
    String message = "";

     @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        request.setAttribute("ErrorMessage", message);
        request.getRequestDispatcher("signup.jsp").forward(request, response);
        
       
    }
    
    
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            NewUserBean user = new NewUserBean();
            
            user.setFirstName(request.getParameter("firstname"));
            user.setLastName(request.getParameter("lastname"));
            user.setPassword(request.getParameter("pwd"));
            user.setUsername(request.getParameter("regno"));
            user.setPass2(request.getParameter("cpwd"));
            user.setEmail(request.getParameter("email"));
            user.setPhone(request.getParameter("phone"));
            
            //search for double existing user
            //dean
            //existinguser = NewUserDAO.searchuser(user.getUsername(), "uName", "dean");
            //student
            existinguser = NewUserDAO.searchuser(user.getUsername(), "regNo", "student");
            
            if(existinguser){
               // user.setMessages("");
               message = "user name provided is already taken";
               // user.setMessages(message);
                
                user.setValid(false);
                
                request.setAttribute("ErrorMessage", message);
                
                response.sendRedirect("signup?username proided already exists");
                
            }else{
            
        
            user = NewUserDAO.signup(user);            
            
            if(user.isValid()){
                
              
               response.sendRedirect("login?account created successul");
             
            }else{
                
                 message = "Unable to create account, check on the information provided";               
                 request.setAttribute("ErrorMessage", message);
                 response.sendRedirect("signup?unable to create account");
        
            }
            
        }
        } catch (ClassNotFoundException ex) {
            System.out.println("Class not found exception....");
            Logger.getLogger(signup.class.getName()).log(Level.SEVERE, null, ex);
            
            ex.printStackTrace();
        } catch (SQLException ex1) {
            System.out.println("SQL exception caught....");
            Logger.getLogger(signup.class.getName()).log(Level.SEVERE, null, ex1);
             ex1.printStackTrace();
        }
    }

   
    @Override
    public String getServletInfo() {
        return "just signup";
        
    }// </editor-fold>

}
