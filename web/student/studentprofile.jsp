
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student|Profile</title>
        <!-- Font Awesome -->
        <!--<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>-->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css">
        <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <!-- Bootstrap core CSS -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.2.1/css/bootstrap.min.css" rel="stylesheet">
        <!-- Material Design Bootstrap -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.7.0/css/mdb.min.css" rel="stylesheet">

    </head>
    <body>
        <jsp:include page="../includes/authenticatednav.html" />
        <br><br><br>
        <div class="container">
            <div class="row">
                <div class="col-md-6 offset-3">
                    <div class="card">
                        <div class="card-header">
                            <p class="h4">Student Profile</p>
                        </div>
                        <div>
                            <p class="text-center"><img src="images/userimg.jpg" alt="user" height="150" width="150"></p>
                            <table class="mr-auto ml-auto">
                                <tr>
                                    <td><b>RegNo:</b></td>
                                    <td>${user}</td>
                                </tr>
                                <tr>
                                    <td><b>Name:</b></td>
                                     <td>${firstname}<%= " " %>${lastname}</td>
                                </tr>
                                <tr>
                                    <td><b>Email:</b></td>
                                     <td>${email}</td>
                                </tr>
                                <tr>
                                    <td><b>Phone:</b></td>
                                     <td>${phone}</td>
                                </tr>
                                <tr>
                                    <td><b>Registered on:</b></td>
                                     <td>${date}</td>
                                </tr>
                            </table>
<!--                            
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>
      
        <div class="fixed-bottom">
            <jsp:include page="../includes/footer.jsp"/>