/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dean;

import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Alex
 */
@WebServlet(name = "ViewAppointments", urlPatterns = {"/ViewAppointments"})
public class ViewAppointments extends HttpServlet {

  /**
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        ArrayList<AppointmentsBean> details =  AppointmentsDAO.getAllAppoints();
        
      request.setAttribute("appointments", details);
                       // System.out.println("obtained records "+details);
       request.getRequestDispatcher("dean/viewsessions.jsp").forward(request, response);
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
