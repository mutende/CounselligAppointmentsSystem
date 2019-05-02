/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dean;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import login.ConnectionManager;

public class FilterSchedule extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String from = request.getParameter("from");
        String to = request.getParameter("to");
        
        System.out.println("From form "+from+" to "+to);
        
//        FilterAppointmntBean tobean = new FilterAppointmntBean();
//        
//        tobean.setFrom(from);
//        tobean.setTo(to);
        
        
         ArrayList<FilterScheduleBean> list1 = new ArrayList<>();

        try {
            Connection con = ConnectionManager.getConnect();
            PreparedStatement ps = con.prepareStatement("select * from scheduling WHERE dateAway BETWEEN ? and ? order by dateAway DESC");
            ps.setString(2, to);
            ps.setString(1,from);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                
                 int schId = rs.getInt("scheduleId");
                    String counsno = rs.getString("counsNo");
                    String dtaway = rs.getString("dateAway");
                    String tmaway = rs.getString("timeAway");
                    String dtback = rs.getString("dateBack");
                    String tmback = rs.getString("timeBack");
                    String reason = rs.getString("reason");
                    String approve = rs.getString("approval");
                
                String ids = Integer.toString(schId);
                
                FilterScheduleBean t = new FilterScheduleBean(ids,counsno,dtaway,tmaway,dtback,tmback,reason,approve);
                list1.add(t);
            }
            
            System.out.println(list1);
        } catch (ClassNotFoundException | SQLException e) {
            System.out.println(e);
        }
        
        
//        String frombn = tobean.getFrom();
//        String tobn = tobean.getTo();
//        System.out.println("fROM BEAN SERVLET "+frombn+" and "+tobn);
//         ArrayList<FilterAppointmntBean> details =  FilterAppointmentDao.getAllSchedules();
        
        System.out.println(list1);
      request.setAttribute("schedules", list1);
      //response.sendRedirect("ApproveSchedules");
      request.getRequestDispatcher("dean/viewschedules.jsp").forward(request, response);
        
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
