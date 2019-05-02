<%--                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
    Document   : setsech.jsp
    Created on : Jan 22, 2019, 12:57:25 PM
    Author     : root
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Set Schedule</title>
                    <!--css-->
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
        
       
    </head>

<body>

         <jsp:include page="../includes/counsnav.html"/>
                <h2 style=" margin-top: 56px; text-align: center;">Please set your Schedule</h2>
           <br/>

       <div class="container">
           <form id="form" action="DateManipulationServ" method="post">

                   <div class="container" Style="float: left; width: 220px; align-content: center; margin-left: 333px ">
                   <label>Date Away</label><br/>
                   <input type="text" name="date_away" class="form-control" id="date" required readonly="readonly" clickable="clickable" autocomplete="off" style="max-width: 200px">


       <br>

                   <label>Time Away</label><br>
                   <input type="text" name="time_away" class="form-control" id= "timepicker"  required readonly="readonly" clickable="clickable" autocomplete="off" style="max-width: 200px">

                   <!--<input type="text" id="timepicker" data-time-format="H:i:s" data-step="01"  data-show-2400="true"/>-->
                   
                   <br>
                   </div>

       <div class="container" Style="float: right; width: 220px; align-content: center; margin-right: 333px">
                   <label>Hours Away</label><br/>
                   
                   <select name="hduration" class="form-control" autocomplete="off" id="hr" style="max-width: 200px">
                       <%
                              for(int j=0; j<15; j++){
                              %>    
                           
                              <option><%=j%></option>                                                                                                                                                                                                              </option>
                         <% } %>
                   </select>
                   <br/>

                   <label>Days Away</label><br/>
                   <select name="daysoff" class="form-control" autocomplete="off" id="daysduration" style="max-width: 200px">
                   
                      
                       <%
                           for(int i=0; i<32; i++){ %>
                           
                           <option> <%= i %></option>
                                   <% } %>
                                   
                       

                   </select><br/>

       </div>
                  <div class="container" Style=" float: left; align-content: center; margin-left: 400px; width: 400px">

                   <label>Reason</label><br>

                   <textarea name="reason" rows="3" class="form-control" cols="25" required autocomplete="off" id="reason_away"  style="max-width: 300px"> </textarea>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         



                   <br/>
                   <input type="submit" class="btn btn-primary mb-2" name="submit" value="submit" style="margin-right: 250px" onClick="submit(this.form)" />
                   </div>
               </form>
       </div>
           <div class="footer fixed-bottom">
    <jsp:include page="../includes/counselorfooter.jsp"/>
    </div>
           <script>
                $(function() {
                   $( "#date" ).datepicker({ minDate: 0, beforeShowDay: $.datepicker.noWeekends,dateFormat: 'yy-mm-dd'});
               
                 });
                </script>
                
              <script>
                $(document).ready(function(){
                  $('#timepicker').mdtimepicker({format: 'hh:mm:ss  '}); //Initializes the time picker and uses the specified format (i.e. 23:30)
                });
              </script>



           <script>
                $('#form').submit(function() {
                    if ($.trim($("#date").val()) === "" || $.trim($("#timepicker").val()) === "" || $.trim($("#hr").val()) === "" || $.trim($("#daysduration").val()) === "" || $.trim($("#reason_away").val()) === "") {
                        alert('Empty fields cannot be submitted! Please fill out all the fields');
                        return false;
                       }  
                       else{
                           alert('You are about to send your schedule to the Dean for Approval.');
                           return true;
                       }
                });

         </script>
      </body>
</html>