<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->

<html>
    <body>
        <div class="container col-md-5 offset-4">
                <form class=" border border-light p-5" action="CounsellorSignup" method="post" name="form">

                    <p class="h4 mb-4">Add New Counselor</p>

                    <div class="form-row mb-4">
                        <div class="col">
                             <label for="counsellorName" class="font-weight-bolder">Counselor Name</label>
                            <input type="text" id="counsellorName" class="form-control" name="counsname" minlength="5" maxlength="50" required autocomplete="off">
                        </div>

                    </div>

                     <div class="form-group">
                                     <label for="counsno" class="font-weight-bolder"> Counselor No.</label>
                                     <select class="custom-select mr-sm-2" id="counsno" name="counsno">
                                        <option value="unknown" selected>--NONE--</option>
                                        <option value="counsellor1">Counselor 1</option>
                                        <option value="counsellor2">Counselor 2</option>
                                        <option value="counsellor3">Counselor 3</option>
                                        <option value="counsellor4">Counselor 4</option>
                                        <option value="counsellor5">Counselor 5</option>
                                        <option value="counsellor6">Counselor 6</option>
                                        <option value="counsellor7">Counselor 7</option>
                                        <option value="counsellor8">Counselor 8</option>
                                      </select>
                                </div>

                   <div class="form-row mb-4">
                         <div class="col">
                                <label for="email" class="font-weight-bolder">Email</label>
                                <input type="email" id="email" class="form-control mb-4" name="email" required="required" minlength="11">
                         </div>
                          <div class="col">

                                <label for="phoneno" class="font-weight-bolder">Phone No.</label>
                                <input type="text" id="phoneno" class="form-control" aria-describedby="FormPhoneHelpBlock" name="phone" minlength="10" maxlength="10" required>
                          </div>

                    </div>


                        <div class="form-row mb-4">
                            <div class="col">
                                <label class="font-weight-bolder mr-4"> Gender</label>
                                <div class="form-check form-check-inline">
                                  <input type="radio" class="form-check-input" id="maleradio" name="gender" value="M">
                                  <label class="form-check-label" for="maleradio">Male</label>
                                </div>
                            </div>
                              <div class="col">

                                <div class="form-check form-check-inline">
                                  <input type="radio" class="form-check-input" id="femaleradio" name="gender" value="F">
                                  <label class="form-check-label" for="femaleradio">Female</label>
                                </div>
                               </div>
                        </div>




                     <label for="password" class="font-weight-bolder">Password</label>
                     <input type="password" id="password" class="form-control"  aria-describedby="FormPasswordHelpBlock" name="pwd" required minlength="9" maxlength="60" autocomplete="off">
                        <small id="FormPasswordHelpBlock" class="form-text text-muted mb-4">
                            At least 8 characters and 1 digit
                        </small>

                    <label for="password" class="font-weight-bolder">Confirm Password</label>
                    <input type="password" id="password" class="form-control"  aria-describedby="FormPasswordHelpBlock" minlength="9" name="cpwd" maxlength="60" autocomplete="off" required="required">
                   <small id="FormPasswordHelpBlock" class="form-text text-muted mb-4">
                       same as the password
                   </small>

                        <div class="form-group">
<!--                                     <label for="counsno2" class="font-weight-bolder"> Status </label>
                                     <select class="custom-select mr-sm-2" id="counsno2" name="state">
                                        <option value="null" selected>--NONE--</option>
                                            <option>Unknown</option>
                                            <option>Available</option>
                                            <option>Not Available</option>
                                      </select>-->
                                </div>

                    <!-- Sign up button -->
                    <button class="btn btn-info my-4 btn-block" type="submit" onclick="validate()">Add Counselor</button>

                </form>
            
            <script>
               function validate(){
                    var pass = document.forms["form"]["pwd"].value;
                    var pass1 = document.forms["form"]["cpwd"].value;
                    var status = document.forms["form"]["state"].value;
                    var counsno = document.forms["form"]["counsno"].value;
                    var gender = document.forms["form"]["gender"].value;
                    if(pass !== pass1 ){
                        
                        alert("Passwords do not march");
                        
                        return false;
                    }
                    if(status === "null"){
                        alert("Counsellor status field required!");
                        return false;
                    }
                    if( counsno === "unknown"){
                         alert("Counsellor number required!");
                        return false;
                    }
                    if(gender === "" || gender === null){
                         alert("Counsellor gender required!");
                        return false;
                    }
                }
            </script>
        </div>

</body>
</html>