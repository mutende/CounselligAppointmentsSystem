<%@page contentType="text/html" pageEncoding="UTF-8" import="login.UserBean"%>
  <% UserBean currentUser = ((UserBean)(session.getAttribute("userSession")));
  session.invalidate();
  response.sendRedirect("home");
  %>
  
