/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package profile;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 *
 * @author root
 */
public class changepassword extends HttpServlet {

   
   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
          request.getRequestDispatcher("student/changepassword.jsp").forward(request, response);
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("servlet running...");
        
        ChangePasswordBean changepass = new ChangePasswordBean();
        
        changepass.setOldPassword(request.getParameter("pwd"));
        changepass.setNewPassword1(request.getParameter("newpwd"));
        
        //  UserBean user = new UserBean();
          HttpSession session = request.getSession(true);
         
          String username = session.getAttribute("userSession1").toString();
          
        changepass.setRegNo(username);
        System.out.println("user name from session "+ username);
        
        try {
            changepass = ChangePasswordDao.changepass(changepass);
            
            if(!changepass.isValid()){
                System.out.println("Error in changing the passwor ... Servlet");
                  request.getRequestDispatcher("changepassword?password change failed").forward(request, response);
            }else{
                System.out.println("Password Changed Successful");
                request.getRequestDispatcher("student/?password changed").forward(request, response);
            }
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(changepassword.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
