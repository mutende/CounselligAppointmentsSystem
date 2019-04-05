<%-- 
    Document   : filterappointment
    Created on : Feb 20, 2019, 7:25:50 AM
    Author     : Alex
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="login.ConnectionManager"%>
<%
String value = request.getParameter("from");
String value1 = request.getParameter("to");

//System.out.println("appointment to be deleted "+value);
try{
Connection con = ConnectionManager.getConnect();
PreparedStatement st = con.prepareStatement("Select * FROM appointment WHERE date between ? and ?");
st.setString(1, value);
st.setString(1, value1);
int run  =st.executeUpdate();
if(run == 1){
    System.out.println("deleting.....");
        String redirectURL = "";
        response.sendRedirect(redirectURL);
}else{
    System.out.println("Unable to delete.");
        String redirectURL = "";
        response.sendRedirect(redirectURL);
}

con.close();
  }catch(Exception e){
System.out.print(e.getMessage());
}
%>
