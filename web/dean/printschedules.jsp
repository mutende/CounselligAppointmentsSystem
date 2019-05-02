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

<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
        <script>
            $(function () {
                $("#to").datepicker();
            });
        </script>
           <script>
        $(function () {
                $("#from").datepicker();
            });
        </script>


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
  <a href="AboutUs/contact.jsp"><i class="fas fa-address-book" style='font-size:18px'></i> Contact Us</a>
  <a href="AboutUs/about.jsp"><i <i class="fas fa-users" style='font-size:18px'></i> About Us</a>
  <div class="change">
  <a href="dean/changepassword.jsp" style=" font-style: italic"><i class="fas fa-key" style='font-size:18px'></i> Change Your Password ?</a>
  </div>
</div>
        </div>

        <div class="topnav fixed-top" style="background-color: #4062b7; margin-left: 250px">
    <nav class="navbar navbar-expand-md ">
        <p style="color: white; margin-left: 300px"> Egerton University Appointment Booking Systems.</p> 
        <ul class="navbar-nav ml-auto">
            
          
         <li class="nav-item">
                <a class="nav-link active" href="ApproveSchedule" style="color: white">Print Schedules</a>
            </li>
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
     <h4 style="margin-left:500px; margin-top: 100px">
    Approve Schedules 
</h4>
<div style="margin-left:500px; margin-top: 50px">
    <form action="#" method="get">
      Filter By:  <input type="text" id= "datepicker" name="from" placeholder="From" autocomplete="off" readonly="readonly">
        
        <input type="text" name="to" placeholder="To" id="to" autocomplete="off" readonly="readonly">
    <script type="text/javascript">

$(document).ready(function(){


    $("#to").datepicker({
        numberOfMonth:1,
        format: 'yyyy/mm/dd',
        todayHighlight:true,
        autoclose:true,

    });

})
    </script>
        <button type="submit" name="get"><span>Search <img src="images/search.png" title="" alt="" height="17" width="17" /></span></button>
    </form>
</div>
     
    
     <div>
     <div style="margin-left:300px; margin-top: 18px; margin-right: 30px">
         <table border="1" width="80%" style="text-decoration: none" class="table table-bordered">
             <tr><th>Id</th><th>Counsellor No.</th><th>Date Away</th><th>Time Away</th><th>Date Back</th><th>Time Back</th><th>Reason</th><th>Approved</th><th>Approve</th></tr>
                    <c:forEach items="${shedules}" var="b">
                <tr>
                    <td>${b.schId}</td>
                    <td>${b.counsNo}</td>
                    <td>${b.dtaway}</td>
                    <td></td>
                    <td>${b.dtback}</td>
                    <td></td>
                    <td>${b.reason}</td>
                    <td>${b.approve}</td>
              
                   <td><a href="dean/approveshedule.jsp?id=${b.schId}" style="color: green">
                           Approve</a></td></tr>
            </c:forEach>
        </table>
     </div>
      </div>
<div class="footer fixed-bottom" style="color: #ffffff; background-color: #808080">
       <jsp:include page="../includes/footer.jsp"/>
    </div>
    </body>
</html>
