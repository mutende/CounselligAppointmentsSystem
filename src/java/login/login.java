/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package login;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



/**
 *
 * @author root
 */
public class login extends HttpServlet {

    String messages = "";
     @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        request.setAttribute("messages", messages);
        request.getRequestDispatcher("login.jsp").forward(request, response);
    }
 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {       
      
       
        try{
            
            UserBean user = new UserBean();
            user.setUsername(request.getParameter("username"));
            user.setPassword(request.getParameter("pwd"));
            user.setClient(request.getParameter("user"));
            
           
            
            user = UserDAO.login(user);
            
            if(user.isValid()){
                //set session
                HttpSession session = request.getSession(true);
                 session.setAttribute("userSession", user);
                 session.setAttribute("userSession1", user.getUsername());
                 session.setMaxInactiveInterval(-1);
               
                //check remember me option
                if(request.getParameter("rem") != null){
                    
                    String username = user.getUsername();
                    String password = user.getPassword();
//                    
//                     System.out.println(username);
//                      System.out.println(password);
//                       System.out.println(request.getParameter("rem"));
//                    
                    Cookie usernameCookie = new Cookie("usernameCookie", username);
                    Cookie userpassCookie = new Cookie("passwordCookie", password);
                    
                    //one year cookie
                    usernameCookie.setMaxAge(60*60*24*365);
                    userpassCookie.setMaxAge(60*60*24*365);
                    
                    
                    usernameCookie.setPath("/");
                    userpassCookie.setPath("/");
                   
                    response.addCookie(usernameCookie);
                    response.addCookie(userpassCookie);
                   
                    
                    if(request.getParameter("user").equals("student")){
                          response.sendRedirect("studenthome?welcome");
                        }else
                            if(request.getParameter("user").equals("counsellor")){
                               response.sendRedirect("counsellor/");
                            }else{
                                 response.sendRedirect("dean/");
                            }
                    
                }else{
                    
                     if(request.getParameter("user").equals("student")){
                          response.sendRedirect("studenthome?logged in as student");
                        }else
                            if(request.getParameter("user").equals("counsellor")){
                               response.sendRedirect("counsellor/");
                            }else{
                                 response.sendRedirect("dean/");
                            }
                
                }
                
               
                
            }else{
                   
                if(user.getClient().equals("unknown")){
                    messages = "select user as Student, Dean or Counselor";
                    request.setAttribute("messages", messages);
                    response.sendRedirect("login");
                    //messages="";
                }else{
                    messages = "Trying to log in as incorrect user or username or password incorrect please retry";
                    request.setAttribute("messages", messages);
                    response.sendRedirect("login?Error");
                   // messages="";
                }
                    
            }
            
            
        }catch(Throwable e){
            System.out.println(e);
        }
        
    }

    
    @Override
    public String getServletInfo() {
        String description="Login servlet is used to handle login events";
        
        return description;
    }// </editor-fold>

}
