
<%@ page language="java"
         contentType="text/html" 
         pageEncoding="UTF-8"
         %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        
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
        
            
       
       
        
        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
         <script src="MDB/js/mdtimepicker.js"></script>
         <script src="MDB/js/mdtimepicker.min.js"></script>
        
        
        
        
          <title>Student|Book</title>


       

<script>
  $( function() {
    $( "#datetimepicker" ).datepicker({minDate: 0, beforeShowDay: $.datepicker.noWeekends,dateFormat: 'yy-mm-dd'});
  } );
  </script>
    

    </head>
    <body>
      <jsp:include page="../includes/authenticatednav.html"/>
        
      <br><br>
      <% String messages = request.getAttribute("messages").toString();
            if(messages.equals(null)){
                messages = "";
            }
        %>
       <div class="container col-md-4 offset-4">
           <div class="text-danger text-center"><p><%=messages%></p></div>
        <form action="AddDate" class="border border-light p-5" Method="post" name="form">
                
                <p class="h4 mb-4 text-center">Select Date and Time to Proceed</p>
              
                <div class="form-group">
                  <label for="datetimepicker" class="font-weight-bolder">Pick date</label>
                  <input type="date" class="form-control" id="datetimepicker" readonly="readonly" name="date" required>
                 </div>
                <div class="form-group">
                  <label for="duration" class="text-left font-weight-bolder">Time</label>
                  <input type="text" class="form-control" id="timepicker" readonly="readonly" name="apptime">
                </div>
                                
                <button type="submit" class="btn btn-primary">Next</button>
            
                              
                </form>
       </div>


    <div class="fixed-bottom">
         <%--<jsp:include page="../includes/footer.jsp"/>--%>
    </div>
   

    
     <script>
                $(document).ready(function(){
                  $('#timepicker').mdtimepicker({format: 'hh:mm:ss', minTime:'13:45:34'}); //Initializes the time picker and uses the specified format (i.e. 23:30)
                });
              </script>
    </body>

</html>
