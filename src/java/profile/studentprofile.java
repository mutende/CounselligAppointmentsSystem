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
public class studentprofile extends HttpServlet {

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        System.out.println("servlet running..");
       studentprofilebean bean = new studentprofilebean();
       HttpSession session = request.getSession(true);
       String username = session.getAttribute("userSession1").toString();
        System.out.println("session user "+username);
       bean.setRegNo(username);
       
      
       
        try {
            
            bean = studentprofiledao.viewprofile(bean);
            System.out.println("object loaded..");
            request.setAttribute("user", bean.getRegNo());
            request.setAttribute("date", bean.getDateofregistration());
            request.setAttribute("firstname", bean.getF_name());
            request.setAttribute("lastname", bean.getL_name());
            request.setAttribute("email", bean.getEmail());
            request.setAttribute("phone", bean.getPhone());
//            System.out.println("page loading....");
            request.getRequestDispatcher("student/studentprofile.jsp").forward(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(studentprofile.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
