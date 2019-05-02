/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package student;

import java.sql.*;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author linuxpc
 */
public class AddDate extends HttpServlet {
    
     static Connection connection = null;
     static ResultSet rs = null;
     static PreparedStatement stmt = null;
     String messages="You are Good, Proceed and make an appointment";
   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setAttribute("messages", messages);
        request.getRequestDispatcher("student/studentBooking.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
      
        System.out.println("Servlet running .....");
       String dt = request.getParameter("date");
       String tm = request.getParameter("apptime");
       
       SimpleDateFormat tmformat = new SimpleDateFormat("HH:mm:ss");
          
        try {
                java.util.Date time = tmformat.parse(tm);
                java.util.Date before = tmformat.parse("8:30:00");
                java.util.Date after = tmformat.parse("16:15:00");
                if(time.after(after) || time.before(before)){
                    
                    messages= "!!!Error Pick time between 8:30:00 and 16:15:00 !!! ";
                    request.setAttribute("messages", messages);
                    response.sendRedirect("AddDate?time error");
                    
                }else{
                addDateBean dttm = new addDateBean(dt, tm);
                System.out.println("time from form "+ tm);
                System.out.println("date form form "+dt);

               dttm.setDt(dt);
               dttm.setTm(tm);

                System.out.println("Date from Bean"+ dttm.getDt());
                System.out.println("Time from Bean"+ dttm.getTm());

                 HttpSession session = request.getSession(true);
                session.setAttribute("dateofappointment", dt);
                session.setAttribute("timeofappointment", tm);
                ArrayList<addDateBean> counselors = addDatedao.listofCounsellors(dt,tm);
                System.out.println(counselors);

                request.setAttribute("counsellors", counselors);
                 request.getRequestDispatcher("student/availableCoun.jsp").forward(request,response);

                System.out.println("Time for Appointment"+tm);
                System.out.println("Date of appoinment"+dt);
                    
                }
                    
            } catch (ParseException e) {
                e.printStackTrace();
            }
       
       
    }
}
