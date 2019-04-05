
<%@ page language="java"
         contentType="text/html" 
        pageEncoding="UTF-8"
        import="login.UserBean" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Student|Change password</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--         Font Awesome 
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css">
         Bootstrap core CSS 
        <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.2.1/css/bootstrap.min.css" rel="stylesheet">
         Material Design Bootstrap 
        <link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.7.0/css/mdb.min.css" rel="stylesheet">-->
  
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
        
            

    </head>
    <body>
        <jsp:include page="../includes/authenticatednav.html"/>
        <br><br><br><br>
        <div class="container col-md-6 offset-3">     
     
         <form action="changepassword" class="border border-light p-5" Method="post" name="form">
                
                <p class="h4 mb-4 text-center">Change Password</p>
              
                <div class="form-group">
                  <label for="passwordold" class="font-weight-bolder">Old Password</label>
                  <input type="password" class="form-control" id="passwordold"  name="pwd">
                 </div>
                <div class="form-group">
                  <label for="InputPassword1" class="text-left font-weight-bolder">New Password</label>
                  <input type="password" class="form-control" id="InputPassword1" name="newpwd">
                </div>
                 <div class="form-group">
                  <label for="InputPassword2" class="text-left font-weight-bolder">Confirm New Password</label>
                  <input type="password" class="form-control" id="InputPassword2" name="cnewpwd">
                </div>
                
                <button type="submit" class="btn btn-primary" onclick="validate()">Update</button>
            
                              <!-- ennd -->
                </form>
            
            <script>
                function validate(){
                    var pass1 = document.forms["form"]["newpwd"].value;
                    var pass2 =  document.forms["form"]["cnewpwd"].value;
                    
                    if(pass1.length <5 ){
                        
                        alert('password too ');
                        return false;
                        
                    }
                    if(pass1 !== pass2){
                        alert('passwords do not match');
                        return false;
                    }
                }
            </script>
         
         <div class="fixed-bottom">
         <jsp:include page="../includes/footer.jsp" />
         </div>
            
        </div>
    </body>
</html>
