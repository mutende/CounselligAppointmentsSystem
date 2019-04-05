<%-- 
    Document   : index
    Created on : Jan 22, 2019, 11:47:43 AM
    Author     : root
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="login.UserBean"%>
    
<!DOCTYPE html>
<html>
    <head>
                   <!--css-->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.2.1/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.7.1/css/mdb.min.css" rel="stylesheet">
        
        
        
        
        
        <link href="MDB/css/mdtimepicker.min.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="MDB/css/mdtimepicker.css" rel="stylesheet" type="text/css"/>
        <link href="https://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
      
        
        
        
        
                  <!--Javascript--> 
                  <!--JQuery--> 
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.4/umd/popper.min.js"></script>
                  <!--Bootstrap core JavaScript--> 
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.2.1/js/bootstrap.min.js"></script>
                  <!--MDB core JavaScript--> 
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.7.1/js/mdb.min.js"></script>
        
            
       
        <!--<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>-->
        <!--<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/flick/jquery-ui.css">-->
        <!--<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.18.1/moment.min.js"></script>-->
        <!--<script src="jquery-ui-timespinner.js"></script>-->
        
        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
         <script src="MDB/js/mdtimepicker.js"></script>
         <script src="MDB/js/mdtimepicker.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Counsellor Home</title>
    </head>
    <body>
           <nav class="navbar navbar-expand-lg navbar-dark  fixed-top" style="background-color: #4062b7">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav"
    aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav ml-auto">
      <li class="nav-item">
        <a class="nav-link" href="index.jsp">Home</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="../Search">View Appointments</a>
      </li>
      <li class="nav-item">

        <a class="nav-link" href="../DateManipulationServ">Set Schedule</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="../logout">Logout</a>
      </li>
     
    </ul>
  </div>
</nav>  
         <div class="container text-center mt-7" style="margin-top:10%">
         <% UserBean currentUser = ((UserBean)(session.getAttribute("userSession")));%>
        <p class="h4-responsive"> Welcome <%= currentUser.getFullName()%> </p>
        
        </div>
        <div class="footer fixed-bottom">
       <jsp:include page="../includes/counselorfooter.jsp"/>
    </div>
    </body>
    
</html>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    