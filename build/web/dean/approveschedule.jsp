<%-- 
    Document   : approveshedule
    Created on : Feb 20, 2019, 8:29:04 AM
    Author     : Alex
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="login.ConnectionManager"%>
<%
String value = request.getParameter("id");
System.out.println("schedule to be approved "+value);
 int result = Integer.parseInt(value);
 String app = "yes";
try{
Connection con = ConnectionManager.getConnect();
PreparedStatement st = con.prepareStatement("UPDATE scheduling SET approval=? WHERE scheduleId = ?");
st.setString(1, app);
st.setInt(2, result);
int run  =st.executeUpdate();
if(run == 1){
    System.out.println("deleting.....");
        String redirectURL = "../ApproveSchedules";
        response.sendRedirect(redirectURL);
}else{
    System.out.println("Unable to delete.");
        String redirectURL = "../ApproveShedules";
        response.sendRedirect(redirectURL);
}

con.close();
  }catch(Exception e){
System.out.print(e.getMessage());
}
%>
