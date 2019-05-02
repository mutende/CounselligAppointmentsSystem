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
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import login.ConnectionManager;

/**
 *
 * @author root
 */
@WebServlet(name = "approveschedule", urlPatterns = {"/approveschedule"})
public class approveschedule extends HttpServlet {
static Connection currentCon = null;
static Connection connection = null;
//static ResultSet rs = null;
public static int run =0;
static PreparedStatement stmt = null;
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String id = request.getParameter("id");
        String approvestatus = request.getParameter("approve");
        
        int the_id = Integer.parseInt(id);
        
        String approve = "yes";
        String disapprove = "no";
        
        String query = "UPDATE scheduling SET approval=? WHERE scheduleId = ?";
        
         try{
             connection = ConnectionManager.getConnect();
             stmt = connection.prepareStatement(query);
             if(approvestatus.equals(approve)){
                 System.out.println("to no ...");
                stmt.setString(1, disapprove);
                stmt.setInt(2, the_id);
             }else{
                 System.out.println("to yes...");
                stmt.setString(1, approve);
                stmt.setInt(2, the_id); 
             }
             
             run = stmt.executeUpdate();
             
             if(run == 1){
                // request.getRequestDispatcher("dean/viewschedules.jsp").forward(request, response);
                 response.sendRedirect("ApproveSchedules");
             }else{
                response.sendRedirect("ApproveSchedules?failed"); 
             }
             
             
             
         }catch (SQLException e){
             String message = e.getMessage();
             System.out.println(message);
         } catch (ClassNotFoundException ex) {
        Logger.getLogger(approveschedule.class.getName()).log(Level.SEVERE, null, ex);
    }
         
         finally{
         
        if(stmt != null ){
            try{
                stmt.close();
            }catch(Exception ex2){}
            stmt = null;
        }
        
        if (connection != null ){
              try{
                connection.close();
            }catch(Exception ex3){}
            connection = null;
        }
        }
       
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
