<%-- 
    Document   : signup
    Created on : Jan 14, 2019, 11:44:48 PM
    Author     : root
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <title>Signup</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
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

<!--<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css">
 Bootstrap core CSS 
<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.2.1/css/bootstrap.min.css" rel="stylesheet">
 Material Design Bootstrap 
<link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.7.0/css/mdb.min.css" rel="stylesheet">-->
    </head>
    <body>
        <jsp:include page="includes/nav.html"/>
        <% String messages = request.getAttribute("ErrorMessage").toString();
            if(messages.equals(null)){
                messages = "";
            }
        %>
        <div class="col-md-5 offset-4">
            <br> <br><br> <br>
            
            <div class="text-danger text-center"><p><%=messages%></p></div>
                
                    
<form class=" border border-light p-5" action="signup" Method="POST" name="form">
    
    <p class="h4 mb-4 text-center">Signup</p>

    <div class="form-row mb-4">
        <div class="col">
             <label for="firstname" class="font-weight-bolder">First Name</label>
            <input type="text" id="firstname" class="form-control" name="firstname" required>
        </div>
        <div class="col">
               <label for="lastname" class="font-weight-bolder">Last Name</label>
            <input type="text" id="lastname" class="form-control"  name="lastname" required>
        </div>
    </div>


    <label for="regnumber" class="font-weight-bolder">Reg No</label>

    <input type="text" id="regnumber" class="form-control mb-4" name="regno">
     
      <div class="form-row mb-4">
        <div class="col">
             <label for="email" class="font-weight-bolder">Email</label>
            <input type="email" id="email" class="form-control" name="email">
        </div>
        <div class="col">
               <label for="phone" class="font-weight-bolder">Phone Number</label>
            <input type="text" id="phone" class="form-control"  name="phone">
        </div>
    </div>

   <label for="password" class="font-weight-bolder">Password</label>
   <input type="password" id="password" class="form-control" aria-describedby="defaultRegisterFormPasswordHelpBlock" name="pwd" required minlength="9" maxlength="60">
    <small id="password" class="form-text text-muted mb-4">
        At least 8 characters and 1 digit
    </small>

    <label for="confirmpassword" class="font-weight-bolder">Confirm Password</label>
    <input type="password" id="confirmpassword" class="form-control" aria-describedby="defaultRegisterFormPhoneHelpBlock" name="cpwd" required="required" minlength="9" maxlength="60"a>
    <small id="confirmpassword" class="form-text text-muted mb-4">
        same as your password
    </small>

   
    <!-- Sign up button -->
    <button class="btn btn-info my-4 btn-block"  onclick="validate()" type="submit">Create Account</button>

   

</form>

          
            
            <script>
               function validate(){
                    var pass = document.forms["form"]["pwd"].value;
                    var pass1 = document.forms["form"]["cpwd"].value;
                    if(pass !== pass1 ){
                        
                        alert("Passwords do not march");
                        
                        return false
                    }
                }
            </script>
       
        </div>
            
         <jsp:include page="includes/footer.jsp" />
            
<!--     Optional JavaScript 
     jQuery first, then Popper.js, then Bootstrap JS 
     <script src="bootstrap/js/jquery-3.3.1.min.js"></script>
    <script src="bootstrap/js/popper.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
        -->
    </body>
</html>