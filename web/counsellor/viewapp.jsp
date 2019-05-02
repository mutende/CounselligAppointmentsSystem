<%-- 
    Document   : viewapp.jsp
    Created on : Jan 22, 2019, 12:56:32 PM
    Author     : root
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
                  <!--css-->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.2.1/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.7.1/css/mdb.min.css" rel="stylesheet">
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
       
        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
         
            
    </head>
    <body>
        <jsp:include page="../includes/counsnav.html"/>
     
        <br><br>
        <div class="row mt-5"> 
            <div class="col-md-12">
                <h4 class="text-center" >
                  Pick date to view your appointments
                </h4>
            </div>
        
        </div>
    
    <br>
    <div class="row">
   
     <div class="container col-md-10 offset-3">
                            <!-- Default form grid -->
             <form id="form" action="Search" method="post">
                 <!-- Grid row -->
                 <div class="row ">
                   <!-- Grid column -->
                   <div class="col mt-2 col-md-3 offset-1">
                     <!-- Default input -->
                     <input type="text" id= "date" class="form-control" name="dater" placeholder="Date" readonly required>
                   </div>
                   <!-- Grid column -->
                   <div class="col">
                        <button type="submit" name="get" class="btn btn-primary"><span>Search <img src="images/search.png" title="" alt="" height="17" width="17" /></span></button>
                   </div>
                   <!-- Grid column -->
                 </div>
                 <!-- Grid row -->
               </form>
               <!-- Default form grid -->
            </div>
           
<!--       <form id="form" action="Search" method="post">
            <input type="text" id= "date" class="form-control" name="dater" placeholder="Date" readonly="readonly" required autocomplete="off">
         
            <button type="submit" class="btn btn-primary" name="date_away"><span>Search <img src="../images/search.png" title="" alt="" height="17" width="17" /></span></button>

        </form>-->
    </div>
         
       
    
               <script>
                $(function() {
                   $( "#date" ).datepicker({ beforeShowDay: $.datepicker.noWeekends, dateFormat: 'yy-mm-dd' });
               
                 });
                </script>
     
            <script>
                $('#form').submit(function() {
                    if ($.trim($("#date").val()) === "" ) {
                        alert('Please Enter Date to view Appointments');
                        return false;
                       }
                      else{
                          //submit
                      }
                });

         </script>  
            
             
    <div class="footer fixed-bottom">
       <jsp:include page="../includes/counselorfooter.jsp"/>
    </div>
          
    </body>
</html>
