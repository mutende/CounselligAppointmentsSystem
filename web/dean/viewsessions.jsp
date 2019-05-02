<%-- 
    Document   : viewsessions
    Created on : Jan 16, 2019, 7:55:56 AM
    Author     : Alex
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="dean.AppointmentsBean"%>
<!DOCTYPE html>
<HTML lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    
<!--    <script type="text/javascript" src="../jquery/jquery-3.3.1.js"></script>-->
        <title>View Appointments</title>

 <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css">
 <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="cdn/mdb/css/bootstrap.min.css" type="text/css">
        <!-- Material Design Bootstrap - type=""-->
        <link href="cdn/mdb/css/mdb.min.css" type="text/css" rel="stylesheet">
        <!-- datepicker -->
        <link rel="stylesheet" href="cdn/datepicker/jquery-ui.css">
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
                <a  class="nav-link" href="logout " style="color: white"><i class="fa fa-power-off" style="font-size:20px"></i> logout</a>
            </li>  </ul>
      
    </nav>
    </div>


<br><br>
        <div class="flex-center flex-column" >
            
     <div class="row">
     <div class="container col-md-10 offset-3">
       <h4 class="h4 text-center mb-2 mt-5">
            Booked Appointments are:
       </h4>
         </div>
     </div>
     
     <div class="row">
         <div class="container col-md-10 offset-3">
                            <!-- Default form grid -->
             <form metho="GET" action="FilterAppointments">
                 <!-- Grid row -->
                 <div class="row ">
                   <!-- Grid column -->
                   <div class="col mt-2">
                     <!-- Default input -->
                     <input type="text" class="form-control" id="from" placeholder="from" name="from" readonly required>
                   </div>
                   <!-- Grid column -->

                   <!-- Grid column -->
                   <div class="col mt-2">
                     <!-- Default input -->
                     <input type="text" class="form-control" id="to" placeholder="to" name="to" readonly required>
                   </div>
                   <div class="col">
                        <button type="submit" name="get" class="btn btn-primary"><span>Search <img src="images/search.png" title="" alt="" height="17" width="17" /></span></button>
                   </div>
                   <!-- Grid column -->
                 </div>
                 <!-- Grid row -->
               </form>
               <!-- Default form grid -->
            </div>
         
     </div>


 <div class="container ml-auto mr-auto">
      
          <div class="alert alert-warning alert-dismissable text-center" role="alert">
            <button class="close" data-dismiss="alert">
              <small><sup>x</sup></small>
            </button>
            The record shows the latest 5 ordered by date away, but you can filter any period.
          </div>
    

</div>
  <div>
        <!--<h1 style="margin-left:500px; margin-top: 100px">Counsellors List</h1>-->
    </div>
     <div style="margin-left:300px; margin-top: 18px; margin-right: 30px">
         <table border="1" width="80%" style="text-decoration: none" class="table table-bordered">
             <tr><th>Appointment Id.</th><th>Date</th><th>Start Time</th><th>End Time</th><th>Counsellor No.</th><th>Student RegNo.</th><th>Delete</th></tr>
                    <c:forEach items="${appointments}" var="t">
                <tr>
                    <td>${t.appId}</td>
                    <td>${t.date}</td>
                    <td>${t.time}</td>
                    <td>${t.etime}</td>
                    <td>${t.counsNo}</td>
                    <td>${t.regNo}</td>
              
                   <td><a href="dean/DeleteAppointment.jsp?appid=${t.appId}" style="color: maroon">
                           Delete <i class="fa fa-trash" aria-hidden="true" style="color: #000000"></i></a></td></tr>
            </c:forEach>
        </table>
     </div>
      </div>
       <div class="footer fixed-bottom" style="color: #ffffff; background-color: #808080">
     <%@ page import="java.util.*" %>

<footer class="text-center footer-copyright py-3 navbar-dark white-text" style="background-color: #808080">
    <% GregorianCalendar currentDate = new GregorianCalendar();
    int year = currentDate.get(Calendar.YEAR);
    %>
        &copy;Copyright <%= year %> <i>CodeBloode Sons Systems. </i>&checkmark;
</footer>

 <script type="text/javascript" src="cdn/jquery-3.4.0.min.js"></script>
 <script type="text/javascript" src="cdn/jquery-ui.js"></script>
 <script type="text/javascript" src="cdn/popper.min.js"></script>
  <script type="text/javascript" src="cdn/mdb.min.js"></script>
 <script type="text/javascript" src="cdn/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="cdn/jszip.min.js">
<link rel="stylesheet" type="text/css" href="cdn/pdfmake.min.js">
<link rel="stylesheet" type="text/css" href="cdn/vfs_fonts.js">


       
    </div>
       
                 <script>
                    $(function() {
                       $( "#from" ).datepicker({dateFormat: 'yy-mm-dd'});

                     });
                </script>
                 <script>
                    $(function() {
                       $( "#to" ).datepicker({dateFormat: 'yy-mm-dd'});

                     });
                </script>
        </body>
</HTML>
