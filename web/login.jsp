<%-- 
    Document   : index
    Created on : Jan 13, 2019, 3:53:06 PM
    Author     : root
--%>

<%@page language="java" contentType="text/html" pageEncoding="UTF-8" import="login.login"%>
<%
    Cookie cookie  = null;
    Cookie [] cookies = null;
    
    String userCookieName = "usernameCookie";
    String userCookieValue = "";
    String passwordCookieName = "passwordCookie";
    String passwordCookieValue = "";
    
    cookies = request.getCookies();
    

         if( cookies != null ) {
                      
            for (int i = 0; i < cookies.length; i++) {
               cookie = cookies[i];
               if (userCookieName.equals(cookie.getName())){
                   userCookieValue = cookie.getValue();
               }
               if(passwordCookieName.equals(cookie.getName())){
                   passwordCookieValue = cookie.getValue();
               }
                    
            }
         } else {
            userCookieValue = "";
            passwordCookieValue = "";
         }
%>
<!DOCTYPE html>

<html>
    <head>
        <title>login</title>
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
         <link rel="stylesheet" href="bootstrap/css/mdb.min.css">
         <link rel="stylesheet" href="css/coverstyle.css">
         <link href="//fonts.googleapis.com/css?family=Oswald:200,300,regular,500,600,700&subset=latin-ext,vietnamese,latin,cyrillic" rel="stylesheet" type="text/css" />-->
            <!-- Font Awesome -->
<!--<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css">
 Bootstrap core CSS 
<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.2.1/css/bootstrap.min.css" rel="stylesheet">
 Material Design Bootstrap 
<link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.7.0/css/mdb.min.css" rel="stylesheet">-->
    </head>
    <body>
        <jsp:include page="includes/nav.html"/>
        <br><br>
         <% String messages = request.getAttribute("messages").toString();
            if(messages.equals(null)){
                messages = "";
            }
        %>
      
        <div class="container mt-5 ml-auto mr-auto col-md-4 offset-4" id="login">
            <div class="text-danger text-center"><p><%=messages%></p></div>
            <% messages = "";%>
            <form action="login" class="border border-light p-5" Method="POST" name="form">
                
                <p class="h4 mb-4 text-center">Login</p>
              
                
                <div class="form-group">
                     <label for="client" class="font-weight-bolder"> Login in as</label>
                     <select class="custom-select mr-sm-2" id="client" name="user">
                        <option value="unknown" selected>--NONE--</option>
                        <option value="student">Student</option>
                        <option value="counsellor">Counsellor</option>
                        <option value="dean">Dean</option>
                      </select>
                </div>
              
                <div class="form-group">
                  <label for="username" class="font-weight-bolder">Username</label>
                  <input type="text" class="form-control" id="username"  name="username" value="<%=userCookieValue%>">
                  <small id="username" class="form-text text-muted"><ul>
                          <li>For student use registartion numbers</li>
                          <li>For counsellors use consellor number you were assigned</li>
                          <li>Dean just use your default user name</li>

                      </ul>
                  </small>
                </div>
                <div class="form-group">
                  <label for="InputPassword1" class="text-left font-weight-bolder">Password</label>
                  <input type="password" class="form-control" id="InputPassword1" name="pwd" value="<%=passwordCookieValue%>">
                </div>
                
                
                <div class="d-flex justify-content-around">
                    <div>
                        <!-- Remember me -->
                        <div class="custom-control custom-checkbox">
                            <input type="checkbox" class="custom-control-input" id="rememberme" name="rem">
                            <label class="custom-control-label" for="rememberme">Remember me</label>
                        </div>
                    </div>
                    <div>
                        <!-- Forgot password -->
                        <a href="">Forgot password?</a>
                    </div>
    </div>
                <button type="submit" class="btn btn-primary" onclick="validate()">login</button>
            
                              <!-- ennd -->
           
                </form>
            
             <script>
               function validate(){
                    var user = document.forms["form"]["user"].value;
                    if(user === "unknown"){
                        
                        alert("Incorrect user selected");
                        
                        return false
                    }
                }
            </script>
        </div>

       
         
         <jsp:include page="includes/footer.jsp" />
            
        </div>
<!--     Optional JavaScript 
     jQuery first, then Popper.js, then Bootstrap JS 
    <script src="bootstrap/js/jquery-3.3.1.min.js"></script>
    <script src="bootstrap/js/popper.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>-->
        
    </body>
</html>

