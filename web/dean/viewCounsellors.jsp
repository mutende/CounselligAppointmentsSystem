<%-- 
    Document   : viewUsers
    Created on : Jan 19, 2019, 12:46:42 PM
    Author     : Alex
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="dean.DeanManageCounsellorBean"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        
        <title>View All Counsellors</title>
    
             <!-- MDB core JavaScript -->
              <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css">
<link rel="stylesheet" type="text/css" href="../bootstrap1/bootstrapcss/mdb.min.css">
<link rel="stylesheet" type="text/css" href="cdn/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="cdn/jquery-3.3.1.js">
<link rel="stylesheet" type="text/css" href="cdn/jszip.min.js">
<link rel="stylesheet" type="text/css" href="cdn/mdb.min.js">
<link rel="stylesheet" type="text/css" href="cdn/pdfmake.min.js">
<link rel="stylesheet" type="text/css" href="cdn/vfs_fonts.js">
 <link  rel="stylesheet" href="../css/stylelogin.css" type="text/css" media="all"> 

            <!-- Material Design Bootstrap -->
    <!--<link href="../bootstrap1/bootstrapcss/mdb.min.css" rel="stylesheet">-->
<style>
body {
  font-family: "Lato", sans-serif;
}

.sidenav {
  height: 100%;
  width: 250px;
  position: fixed;
  z-index: 1;
  top: 0;
  left: 0;
  background-color: #004085;
  overflow-x: hidden;
  padding-top: 20px;
}
.sidenav1 {
    height: 60%;
  width: 220px;
  position: fixed;
  z-index: 1;
  top: 70px;
  left: 10px;
  background-color: #ffffff;
  overflow-x: hidden;
  padding-top: 15px;
}

.sidenav1 a {
  padding: 6px 15px 6px 16px;
  text-decoration:none;
  font-size: 15px;
  color: #000000;
  display: block;
}

.sidenav1 a:hover {
    color: #ffffff;
    background-color: #59cbea ;
}
.change a:hover{
    color: blue;
    background-color: #ffffff;
}
.change a:active{
    color: blue;
    text-decoration: underline;
}
/*.main {
  margin-left: 160px;  Same as the width of the sidenav 
  font-size: 28px;  Increased text to enable scrolling 
  padding: 0px 10px;
}*/

@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}
</style>




   <!-- Font Awesome -->
  

</head>
 <body style="background-color: whitesmoke">
        <div class="sidenav">
   <div class="sidenav1">
  <a href="dean/"><i class="fa fa-home" style='font-size:18px'></i> Home</a>
  <a href="ViewAppointments"><i class="fas fa-eye" style='font-size:18px'></i> View Appointments</a>
  <a href="ViewAllCounsellors"><i class="fas fa-eye" style='font-size:18px'></i> View Counsellors</a>
  <a href="CounsellorSignup"><i class="fas fa-user-plus" style='font-size:18px'></i> Add Counsellor</a>
  <a href="ApproveSchedules"><i class='far fa-edit' style='font-size:18px'></i> Approve Schedules</a>
  
  <div class="change">
  <a href="dean/changepassword.jsp" style=" font-style: italic"><i class="fas fa-key" style='font-size:18px'></i> Change Your Password ?</a>
  </div>
</div>
        </div>

        <div class="topnav fixed-top" style="background-color: #4062b7; margin-left: 250px">
    <nav class="navbar navbar-expand-md ">
        <p style="color: white; margin-left: 300px"> Egerton University Appointment Booking Systems.</p> 
        <ul class="navbar-nav ml-auto">
            
          
<!--            <li class="nav-item">
                <a class="nav-link active" href="dean/awaycounsellors.jsp" style="color: white">Print Unavailable Counsellors</a>
            </li>-->
            <!--
            <li class="nav-item">
                <a class="nav-link" href="viewsessions.jsp"> View Appointments</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="approveschedules.jsp">Approve Counsellor Schedules</a>
            </li>>-->
            
            <li class="nav-item">
                <a  class="nav-link" href="logout" style="color: white"><i class="fa fa-power-off" style="font-size:20px"></i> logout</a>
            </li>  </ul>
      
    </nav>
    </div>
     
     
    <div>
        <h1 style="margin-left:500px; margin-top: 100px">Counsellors List</h1>
    </div>
     <div style="margin-left:300px; margin-top: 40px; margin-right: 30px">
         <table border="1" width="80%" style="text-decoration: none" class="table table-bordered">
            <tr><th>Counsellor No.</th><th>Name</th><th>Email</th><th>Phone No.</th><th>Gender</th><th>Delete</th></tr>
                    <c:forEach items="${counsellors}" var="u">
                <tr>
                    <td>${u.counsNo}</td>
                    <td>${u.name}</td>
                    <td>${u.email}</td>
                    <td>${u.phoneNo}</td>
                    <td>${u.gender}</td>
              
                   <td><a href="dean/DeleteCounsellor.jsp?id=${u.counsNo}" style="color: maroon">
                           Delete <i class="fa fa-trash" aria-hidden="true" style="color: #000000"></i></a></td></tr>
            </c:forEach>
        </table>
     </div>
<div class="footer fixed-bottom" style="color: #ffffff; background-color: #808080">
       <jsp:include page="../includes/footer.jsp"/>
    </div>
    </body>
</html>
