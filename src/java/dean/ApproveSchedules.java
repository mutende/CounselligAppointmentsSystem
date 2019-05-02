/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dean;

import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Alex
 */
public class ApproveSchedules extends HttpServlet {

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        ArrayList<ApproveSchedulesBean> schs =  ApproveSchedulesDAO.getAllSchedules();
        
      request.setAttribute("schedules", schs);
                       // System.out.println("obtained records "+schs);
       request.getRequestDispatcher("dean/viewschedules.jsp").forward(request, response);
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
