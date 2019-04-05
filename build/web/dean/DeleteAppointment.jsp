<%-- 
    Document   : DeleateAppointment
    Created on : Feb 20, 2019, 6:45:42 AM
    Author     : Alex
--%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="login.ConnectionManager"%>
<%
String value = request.getParameter("appid");
System.out.println("appointment to be deleted "+value);

try{
Connection con = ConnectionManager.getConnect();
PreparedStatement st = con.prepareStatement("DELETE FROM appointment WHERE appId = ?");
st.setString(1, value);
int run  =st.executeUpdate();
if(run == 1){
    System.out.println("deleting.....");
        String redirectURL = "../ViewAppointments";
        response.sendRedirect(redirectURL);
}else{
    System.out.println("Unable to delete.");
        String redirectURL = "../ViewAppointments";
        response.sendRedirect(redirectURL);
}

con.close();
  }catch(Exception e){
System.out.print(e.getMessage());
}
%>
