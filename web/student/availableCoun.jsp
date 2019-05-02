<%-- 
    Document   : availableCoun
    Created on : Feb 6, 2019, 1:16:05 PM
    Author     : linuxpc
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
<!--        <link rel="stylesheet" type="text/css" href="bootstrap1/bootstrapcss/bootstrap.css">
        <link rel="stylesheet" type="text/css" href="../bootstrap1/bootstrapcss/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="../bootstrap1/bootstrapcss/bootstrap-grid.css">
        <link rel="stylesheet" type="text/css" href="../bootstrap1/bootstrapcss/bootstrap-grid.min.css">
        <link rel="stylesheet" type="text/css" href="../bootstrap1/bootstrapcss/bootstrap-reboot.css">
        <link rel="stylesheet" type="text/css" href="../bootstrap1/bootstrapcss/bootstrap-reboot.min.css">
        <link rel="stylesheet" type="text/css" href="../bootstrap1/bootstrapcss/font-awesome.min.css">-->

  
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
        
            

        <script src="js/jquery.min.js"></script>
        <script src="../jquery/jquery.min.js"></script>

        <title>Student|Available Counselors</title>
    </head>
    
    <body>
         <body>
      <jsp:include page="../includes/authenticatednav.html"/>
        
      <br><br>
      <% // String messages = request.getAttribute("messages").toString();
//            if(messages.equals(null)){
//                messages = "";
//            }
        %>
       <div class="container col-md-4 offset-4">    
           <div class="text-success text-center"><p><% //messages%></p></div>
        <form action="booking" class="border border-light p-5" Method="post" name="form">
                <p class="h4 mb-4 text-center">Select From Available</p>
              
                 <div class="form-group">
                     <label for="client" class="font-weight-bolder">Available Counselors</label>
                     <select class="custom-select mr-sm-2" id="client" name="counse">
                        <option value="" selected>--NONE--</option>
                        <c:forEach var="availableCounsellors" items="${counsellors}">
                         
                            <option>${availableCounsellors.cn}</option>
                        </c:forEach>
                         
                      </select>
                </div>
                                
                <button type="submit" class="btn btn-primary">Book</button>
            
                              <!-- ennd -->
                </form>
       </div>

    <div class="fixed-bottom">
         <jsp:include page="../includes/footer.jsp"/>
    </div>
   
    </body>
        
</html>
