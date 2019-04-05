<%-- 
    Document   : signup
    Created on : Jan 14, 2019, 11:44:48 PM
    Author     : root
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <title>Errors</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
        <link rel="stylesheet" type="text/css" href="cdn/all.css">
<link rel="stylesheet" type="text/css" href="cdn/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="cdn/buttons.bootstrap.min.js">
<link rel="stylesheet" type="text/css" href="cdn/buttons.colVis.min.js">
<link rel="stylesheet" type="text/css" href="cdn/buttons.html5.min.js">
<link rel="stylesheet" type="text/css" href="cdn/buttons.print.min.js">
<link rel="stylesheet" type="text/css" href="cdn/dataTables.bootstrap.min.js">
<link rel="stylesheet" type="text/css" href="cdn/dataTables.buttons.min.js">
<link rel="stylesheet" type="text/css" href="cdn/jquery-3.3.1.js">
<link rel="stylesheet" type="text/css" href="cdn/jquery.dataTables.min.js">
<link rel="stylesheet" type="text/css" href="cdn/jszip.min.js">
<link rel="stylesheet" type="text/css" href="cdn/mdb.min.js">
<link rel="stylesheet" type="text/css" href="cdn/pdfmake.min.js">
<link rel="stylesheet" type="text/css" href="cdn/vfs_fonts.js">

<!--         <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
         <link rel="stylesheet" href="css/coverstyle.css">
         <link href="//fonts.googleapis.com/css?family=Oswald:200,300,regular,500,600,700&subset=latin-ext,vietnamese,latin,cyrillic" rel="stylesheet" type="text/css" />
         <link rel="stylesheet" href="bootstrap/css/mdb.min.css">-->

<!-- Font Awesome -->
<!--<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css">
 Bootstrap core CSS 
<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.2.1/css/bootstrap.min.css" rel="stylesheet">
 Material Design Bootstrap 
<link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.7.0/css/mdb.min.css" rel="stylesheet">
    </head>-->
    <body>
        <div class="mb-1">
        <jsp:include page="includes/nav.html"/>
        </div>
        <div class="container mt-7">
            <br/><br/><br/><br/>
        <h5 class="h5">Username or password invalid!! <br>please retry to <a href="login.jsp" class="blue-text">login</a> again</h5>
       
        <div class="fixed-bottom">
         <jsp:include page="includes/footer.jsp"/>
         </div>   
        </div>
<!--     Optional JavaScript 
     jQuery first, then Popper.js, then Bootstrap JS 
     <script src="bootstrap/js/jquery-3.3.1.min.js"></script>
    <script src="bootstrap/js/popper.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>-->
        
    </body>
</html>