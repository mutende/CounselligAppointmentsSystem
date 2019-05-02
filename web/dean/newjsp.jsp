<%-- 
    Document   : newjsp
    Created on : Feb 20, 2019, 9:01:41 AM
    Author     : Alex
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <div>
     <div style="margin-left:300px; margin-top: 18px; margin-right: 30px">
         <table border="1" width="80%" style="text-decoration: none" class="table table-bordered">
             <tr><th>Id</th><th>Counsellor No.</th><th>Date Away</th><th>Time Away</th><th>Date Back</th><th>Time Back</th><th>Reason</th><th>Approve</th></tr>
                    <c:forEach items="${shedules}" var="b">
                <tr>
                    <td>${b.schId}</td>
                    <td>${b.counsNo}</td>
                    <td>${b.dtaway}</td>
                    <td></td>
                    <td>${b.dtback}</td>
                    <td></td>
                    <td>${b.reason}</td>
              
                   <td><a href="dean/DeleteCounsellor.jsp?id=${b.counsNo}" style="color: green">
                           Approve</a></td></tr>
            </c:forEach>
        </table>
     </div>
      </div>
    </body>
</html>
