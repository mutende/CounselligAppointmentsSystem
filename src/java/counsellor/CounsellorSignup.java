/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package counsellor;

import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import signup.NewUserDAO;

/**
 *
 * @author root
 */
@WebServlet(name = "CounsellorSignup", urlPatterns = {"/CounsellorSignup"})
public class CounsellorSignup extends HttpServlet {
        String message = "";
        boolean existinguser = true;
        
      @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
            request.setAttribute("ErrorMessage", message);
            request.getRequestDispatcher("dean/addCounsellorForm.jsp").forward(request, response);
    }
    
    
    
   @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            NewCounsellorBean user = new NewCounsellorBean();
            
                        
            user.setFullName(request.getParameter("counsname"));
            user.setEmail(request.getParameter("email"));
            user.setGender(request.getParameter("gender"));
            user.setCounsNo(request.getParameter("counsno"));
            user.setStatus(request.getParameter("state"));
            user.setPhone(request.getParameter("phone"));
            user.setPassword(request.getParameter("pwd"));
            user.setConfirm_password(request.getParameter("cpwd"));
            
             //search for double existing user
            existinguser = NewUserDAO.searchuser(user.getCounsNo(), "counsNo", "counsellor");
            
           if(existinguser){
               // user.setMessages("");
               message = "The counsellor number has already been assigned please, select a free counselor number";
               // user.setMessages(message);
                
                user.setValid(false);
                
                request.setAttribute("ErrorMessage", message);
                
                response.sendRedirect("CounsellorSignup?username provided already exists");
                
            }else{
                    
                user = NewCounsesellorDAO.signup(user);

                if(user.isValid()){
                    message = "Counsellor Added Successfully ...";
                    request.setAttribute("ErrorMessage", message);
                   response.sendRedirect("CounsellorSignup?Counsellor Added Successfully");

                }else{
                    
                    message = "unable to create account, check on provided information";
                    request.setAttribute("ErrorMessage", message);
                    response.sendRedirect("CounsellorSignup?unable to add counsellor");            
                }
            
         } 
        } catch (ClassNotFoundException ex) {
            
            ex.printStackTrace();
        }   catch (SQLException ex) {
                Logger.getLogger(CounsellorSignup.class.getName()).log(Level.SEVERE, null, ex);
            }
    }
    
    

    }


