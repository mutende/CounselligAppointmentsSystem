/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dean;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import login.ConnectionManager;

/**
 *
 * @author root
 */
public class FilterAppointments extends HttpServlet {

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
        
        
         ArrayList<AppointmentsBean> list1 = new ArrayList<>();

        try {
            Connection con = ConnectionManager.getConnect();
            PreparedStatement ps = con.prepareStatement("select appId, date, time,eTime, counsNo, regNo from appointment WHERE date BETWEEN ? and ? order by date DESC");
            ps.setString(2, to);
            ps.setString(1,from);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                
                int appid = rs.getInt("appId");
                String dt = rs.getString("date");
                String tm = rs.getString("time");
                String etm = rs.getString("eTime");
                String couns = rs.getString("counsNo");
                String reg = rs.getString("regNo");
                
                String ids = Integer.toString(appid);
                
                AppointmentsBean t = new AppointmentsBean(ids,dt,tm,etm,couns,reg);
                list1.add(t);
            }
            
            //System.out.println(list1);
        } catch (Exception e) {
            System.out.println(e);
        }
        
        
//        String frombn = tobean.getFrom();
//        String tobn = tobean.getTo();
//        System.out.println("fROM BEAN SERVLET "+frombn+" and "+tobn);
//         ArrayList<FilterAppointmntBean> details =  FilterAppointmentDao.getAllSchedules();
        
        System.out.println(list1);
      request.setAttribute("appointments", list1);
      //response.sendRedirect("ApproveSchedules");
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
