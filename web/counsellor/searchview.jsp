<%-- 
    Document   : searchview
    Created on : Jan 30, 2019, 12:24:37 PM
    Author     : root
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>view sessions</title>
         <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />
                 <!--css-->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.2.1/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.7.1/css/mdb.min.css" rel="stylesheet">
        
                 <!-- Javascript -->
                 <!-- JQuery -->
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.4/umd/popper.min.js"></script>
                 <!-- Bootstrap core JavaScript -->
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.2.1/js/bootstrap.min.js"></script>
                 <!-- MDB core JavaScript -->
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.7.1/js/mdb.min.js"></script>
    </head>
    <body>
         <jsp:include page="../includes/counsnav.html"/>
   
        <br><br><br><br><br><br>
        <table width="900px" align="center"
        style="border:2px solid #000000;">
        <tr>
        <td colspan=6 align="center"
        style="background-color:teal">
        <b>Sessions Record</b></td>
        </tr>
        <tr style="background-color:lightgrey;">
        <td><b>Counsellor No</b></td>
        <td><b>Student Reg No.</b></td>
        <td><b>Date</b></td>
        <td><b>Start Time</b></td>
        <td><b>End Time</b></td>

        </tr>
        
        <c:forEach items="${viewdetails}" var="data">
            
        <tr style="background-color:#F9EBB3">
                <td>${data.counselor}</td>
                <td>${data.stident}</td>
                <td>${data.dates}</td>
                <td>${data.starttime}</td>
                <td>${data.endtime}</td>
            </tr>
        </c:forEach>      
       
        ${data}
        
        </table>
       <div class="footer fixed-bottom">
       <jsp:include page="../includes/counselorfooter.jsp"/>
    </div>
            </body>
        </html>
