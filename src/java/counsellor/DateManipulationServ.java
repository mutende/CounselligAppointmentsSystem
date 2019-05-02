/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package counsellor;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpSession;
/**
 *
 * @author root
 */
public class DateManipulationServ extends HttpServlet {

    String message = null;
   
         @Override
      protected void doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException{
        
          request.setAttribute("Message", message);
          request.getRequestDispatcher("counsellor/setsech.jsp").forward(request, response);
        
        
    }

      
      
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession(true);
        String username = session.getAttribute("userSession1").toString();
        System.out.println("session user "+username);
        
        int hours = Integer.parseInt(request.getParameter("hduration"));
        int days = Integer.parseInt(request.getParameter("daysoff"));
        String dateaway=request.getParameter("date_away");
        String timeaway=request.getParameter("time_away");
        String reason=request.getParameter("reason");
        
            SetSecheduleBean dataobj = new SetSecheduleBean();
            
            dataobj.setHours(hours);
            dataobj.setDays(days);
            dataobj.setDateaway(dateaway);
            dataobj.setTimeaway(timeaway);
            dataobj.setReason(reason);
            dataobj.setCounselor(username);
            
        try {
            dataobj = ScheduleDAO.setSechedule(dataobj);
            
            if(dataobj.isValid()){
                
                message = "Schedule set.Wait for Approval";
                request.setAttribute("Message", message);
                response.sendRedirect("DateManipulationServ?Schedule set.Wait for Approval");
            }
            else{
                message = "Unable to set Schedule";
                request.setAttribute("ErrorMessage", message);
                response.sendRedirect("DateManipulationServ?Unable to set Schedule");
            }
            
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DateManipulationServ.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Servlet that gets input date and time and calculates nect time back for set schedule";
    }// </editor-fold>

}
