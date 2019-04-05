/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package student;

import java.sql.*;
import java.io.IOException;
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
     String messages="";
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
}
