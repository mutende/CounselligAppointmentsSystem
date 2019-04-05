<%-- 
    Document   : DeleteUser
    Created on : Jan 19, 2019, 12:48:27 PM
    Author     : Alex
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="login.ConnectionManager"%>
<%
String value = request.getParameter("id");
System.out.println("counselor to be deleted "+value);

try{
Connection con = ConnectionManager.getConnect();
PreparedStatement st = con.prepareStatement("DELETE FROM counsellor WHERE counsNo = ?");
st.setString(1, value);
int run  =st.executeUpdate();
if(run == 1){
    System.out.println("deleting.....");
        String redirectURL = "../ViewAllCounsellors";
        response.sendRedirect(redirectURL);
}else{
    System.out.println("Unable to delete.");
        String redirectURL = "../ViewAllCounsellors";
        response.sendRedirect(redirectURL);
}

con.close();
  }catch(Exception e){
System.out.print(e.getMessage());
}
%>

