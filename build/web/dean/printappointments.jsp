<%-- 
    Document   : printappointments
    Created on : Feb 18, 2019, 12:22:26 AM
    Author     : Alex
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Print Booked Appointments</title>
    <    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <script type="text/javascript" src="../jquery/jquery-3.3.1.js"></script>
    <link rel="stylesheet" href="css/datepicker.css">
    <script type="text/javascript" src="js/bootstrap-datepicker.js"></script>
<link rel="stylesheet" type="text/css" href="../bootstrap1/bootstrapcss/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../bootstrap1/bootstrapcss/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="../bootstrap1/bootstrapcss/bootstrap-grid.css">
<link rel="stylesheet" type="text/css" href="../bootstrap1/bootstrapcss/bootstrap-grid.min.css">
<link rel="stylesheet" type="text/css" href="../bootstrap1/bootstrapcss/bootstrap-reboot.css">
<link rel="stylesheet" type="text/css" href="../bootstrap1/bootstrapcss/bootstrap-reboot.min.css">
<link rel="stylesheet" type="text/css" href="../bootstrap1/bootstrapcss/font-awesome.min.css">
             <!-- MDB core JavaScript -->
<link rel="stylesheet" type="text/css" href="../bootstrap1/bootstrapcss/mdb.min.css">


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
   <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css">
   <link rel="stylesheet" type="text/css" href="../cdn/all.css">
   <link rel="stylesheet" type="text/css" href="../cdn/all1.css"
<link rel="stylesheet"   type="text/css" href="../cdn/bootstrap.min.css">
<link rel="stylesheet"   type="text/javascript" href="../cdn/buttons.bootstrap.min.js">
<link rel="stylesheet" type="text/javascript" href="../cdn/buttons.colVis.min.js">
<link rel="stylesheet"  type="text/javascript" href="../cdn/buttons.html5.min.js">
<link rel="stylesheet"  type="text/javascript" href="../cdn/buttons.print.min.js">
<link rel="stylesheet"  type="text/javascript" href="../cdn/dataTables.bootstrap.min.js">
<link rel="stylesheet"  type="text/javascript" href="../cdn/dataTables.buttons.min.js">
<link rel="stylesheet"  type="text/javascript" href="../cdn/jquery-3.3.1.js">
<link rel="stylesheet"  type="text/javascript" href="../cdn/jquery.dataTables.min.js">
<link rel="stylesheet"  type="text/javascript" href="../cdn/jszip.min.js">
<link rel="stylesheet"  type="text/javascript"  href="../cdn/mdb.min.js">
<link rel="stylesheet"  type="text/javascript" href="../cdn/pdfmake.min.js">
<link rel="stylesheet"  type="text/javascript" href="../cdn/vfs_fonts.js">
<link rel="stylesheet"  type="text/javascript" href="../cdn/font-awesome.min.js">
<link rel="stylesheet"  type="text/javascript" href="../cdn/jquery-3.2.1.slim.min.js">

    </head>
    <body style="background-color: whitesmoke">
        <div class="sidenav">
   <div class="sidenav1">
  <a href="index.jsp"><i class="fa fa-home" style='font-size:18px'></i> Home</a>
  <a href="../ViewAppointments"><i class="fas fa-eye" style='font-size:18px'></i> View Appointments</a>
  <a href="../ViewAllCounsellors"><i class="fas fa-eye" style='font-size:18px'></i> View Counsellors</a>
  <a href="../CounsellorSignup"><i class="fas fa-user-plus" style='font-size:18px'></i> Add Counsellor</a>
  <a href="../ApproveSchedules"><i class='far fa-edit' style='font-size:18px'></i> Approve Schedules</a>
  <a href="../AboutUs/contact.jsp"><i class="fas fa-address-book" style='font-size:18px'></i> Contact Us</a>
  <a href="../AboutUs/about.jsp"><i <i class="fas fa-users" style='font-size:18px'></i> About Us</a>
  <div class="change">
  <a href="changepassword.jsp" style=" font-style: italic"><i class="fas fa-key" style='font-size:18px'></i> Change Your Password ?</a>
  </div>
</div>
        </div>

        <div class="topnav fixed-top" style="background-color: #4062b7; margin-left: 250px">
    <nav class="navbar navbar-expand-md ">
<!--         <li class="nav-item">-->
                <p style="color: white; margin-left: 300px"> Egerton University Appointment Booking Systems.</p> 
            <!--</li-->
      <ul class="navbar-nav ml-auto">
         
            
                    <li class="nav-item">
                <a class="nav-link active" href="viewsessions.jsp">Booked Appointments</a>
            </li>
            <!--
            <li class="nav-item">
                <a class="nav-link" href="viewsessions.jsp"> View Appointments</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="approveschedules.jsp">Approve Counsellor Schedules</a>
            </li>
            -->
            <li class="nav-item">
                <a  class="nav-link" href="logout"><i class="fa fa-power-off" style="font-size:20px"></i> logout</a>
            </li>  </ul>
      
    </nav>
    </div>
         <h4 style="margin-left:500px; margin-top: 100px">
       Select Date Below And Print The Booked Sessions
   </h4>
<div style="margin-left:500px;">
    <br>
    <form action="" method="get">
        <input type="text" id= "from1" name="from" placeholder="From" autocomplete="off" readonly="readonly">
        <script type="text/javascript">

            $(document).ready(function(){


                $("#from1").datepicker({
                    numberOfMonth:1,
                    format: 'yyyy/mm/dd',
                    todayHighlight:true,
                    autoclose:true,

                });

            })
        </script>
        <input type="text"  name="to" placeholder="To" id="to1" autocomplete="off" readonly="readonly">
        <script type="text/javascript">

            $(document).ready(function(){


                $("#to1").datepicker({
                    numberOfMonth:1,
                    format: 'yyyy/mm/dd',
                    todayHighlight:true,
                    autoclose:true,

                });

            })
        </script>

        <button type="submit" name="print">Print</button>
    </form>
    </div>
<div class="footer fixed-bottom">
       <jsp:include page="../includes/footer.jsp"/>
    </div>
    </body>
</html>
