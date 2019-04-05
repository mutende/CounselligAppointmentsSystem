/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package student;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author root
 */
public class booking extends HttpServlet {
    
    String messages="";
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setAttribute("messages", messages);
       request.getRequestDispatcher("student/availableCoun.jsp").forward(request,response);
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("booking servlet runnin....");
       HttpSession session = request.getSession(true);
       String studentReg = session.getAttribute("userSession1").toString();
       String counselor = request.getParameter("counse");
       
       String appointmentDate = session.getAttribute("dateofappointment").toString();
       String appointmentTime = session.getAttribute("timeofappointment").toString();
       
       BookBean bk = new BookBean();
       
       bk.setAppointmentDate(appointmentDate);
       bk.setAppointmentTime(appointmentTime);
       bk.setCounselor(counselor);
       bk.setStudent(studentReg);
       
       bk = Bookdao.boookAppointment(bk);
       
       if(bk.isCorrect()){
           
            messages = "Book sucessful";
            request.setAttribute("messages", messages);                    

            response.sendRedirect("succesBooking");

            //request.getRequestDispatcher("book?book successful").forward(request,response);
       }else{
          messages = "Could not make an appointment, please retry..";
          request.setAttribute("messages", messages);
          response.sendRedirect("AddDate?unable to book");
          //request.getRequestDispatcher("student/availableCoun.jsp").forward(request,response); 
       }
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
