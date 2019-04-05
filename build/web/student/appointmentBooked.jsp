<%-- 
    Document   : index
    Created on : Jan 15, 2019, 1:02:11 AM
    Author     : root
--%>



<%@ page language="java"
         contentType="text/html" 
        pageEncoding="UTF-8"
        import="login.UserBean" %>
<!DOCTYPE html>

<html>
    <head>
        <title>Student|Home</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- Font Awesome -->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css">
<!-- Bootstrap core CSS -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.2.1/css/bootstrap.min.css" rel="stylesheet">
<!-- Material Design Bootstrap -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.7.0/css/mdb.min.css" rel="stylesheet">

    </head>
    <body>
        <jsp:include page="../includes/authenticatednav.html"/>
        <br><br><br><br>
        
        <div class="container text-center mt-7 text-success" style="margin-top:10%">
             <p class="h4-responsive">Appointment Successfully Booked! </p>
        </div>
        
         <div class="fixed-bottom">
         <jsp:include page="../includes/footer.jsp" />
         </div>
            
        </div>

        
    </body>
</html>
