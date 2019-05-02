<%-- 
    Document   : approveschedules
    Created on : Jan 16, 2019, 8:12:28 AM
    Author     : Alex
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="dean.ApproveSchedulesBean"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        
        <title>Approve Schedules</title>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css">
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="cdn/mdb/css/bootstrap.min.css" type="text/css">
        <!-- Material Design Bootstrap - type=""-->
        <link href="cdn/mdb/css/mdb.min.css" type="text/css" rel="stylesheet">
        <!-- datepicker -->
        <link rel="stylesheet" href="cdn/datepicker/jquery-ui.css">

    
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
            
          
<!--         <li class="nav-item">
                <a class="nav-link active" href="" style="color: white">Print Schedules</a>
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
     <br><br>
     <div class="row">
     <div class="container col-md-6 offset-3">
       <h4 class="h4 text-center mb-2 mt-5">
           Approve Schedules 
       </h4>
         </div>
     </div>
     
     <div class="row">
         <div class="container col-md-6 offset-3">
                            <!-- Default form grid -->
               <form method="GET" action="FilterSchedule">
                 <!-- Grid row -->
                 <div class="row">
                   <!-- Grid column -->
                   <div class="col mt-2">
                     <!-- Default input -->
                     <input type="text" class="form-control" id="from" placeholder="date from" name="from" readonly required>
                   </div>
                   <!-- Grid column -->

                   <!-- Grid column -->
                   <div class="col mt-2">
                     <!-- Default input -->
                     <input type="text" class="form-control" id="to" placeholder="date to" name="to" readonly required>
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
            The record shows the latest 5 ordered by date away, but you can filter any period
          </div>
    

</div>
     
    
     <div>
     <div style="margin-left:300px; margin-top: 18px; margin-right: 30px">
         <table border="1" style="text-decoration: none" class="table table-bordered">
             <tr><th>Id</th><th>Counsellor No.</th><th>Date Away</th><th>Time Away</th><th>Date Back</th><th>Time Back</th><th>Reason</th><th> Approve Status</th><th>Yes/No</th></tr>
                    <c:forEach items="${schedules}" var="b">
                <tr>
                    <td>${b.schId}</td>
                    <td>${b.counsNo}</td>
                    <td>${b.dtaway}</td>
                    <td>${b.taway}</td>
                    <td>${b.dtback}</td>
                    <td>${b.taway}</td>
                    <td>${b.reason}</td>
                    
                    <td>${b.approve}</td>
                    
              
                   <td><a href="approveschedule?id=${b.schId}&approve=${b.approve}" style="color: green">
                           Confirm <i class="fas fa-check-circle"></i></a></td></tr>
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
</html>
