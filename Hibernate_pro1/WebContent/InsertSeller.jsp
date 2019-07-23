<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file ="navbar.jsp" %>     
<meta charset="ISO-8859-1">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>


<script type="text/javascript" src="https://code.jquery.com/jquery-1.11.3.min.js"></script>



<!-- Bootstrap Date-Picker Plugin -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>

<title>Registration</title>

<style>

#regContainer{
    margin-top: 3%;  
}

.panel-login {
    border-color: #ccc;
     background-color: #f9f8f8;
    -webkit-box-shadow: 0px 2px 3px 0px rgba(0,0,0,0.2);
    -moz-box-shadow: 0px 2px 3px 0px rgba(0,0,0,0.2);
    box-shadow: 0px 2px 3px 0px rgba(0,0,0,0.2);
}
.panel-login>.panel-heading {
    text-align:center;
}
.panel-login>.panel-heading a{
    text-decoration: none;
    font-weight: bold;
    font-size: 28px;
    -webkit-transition: all 0.1s linear;
    -moz-transition: all 0.1s linear;
    transition: all 0.1s linear;
}
.panel-login>.panel-heading a.active{
    font-size: 34px;
}
.panel-login>.panel-heading hr{
    margin-top: 10px;
    margin-bottom: 0px;
    clear: both;
    border: 0;
    height: 1px;
    background-image: -webkit-linear-gradient(left,rgba(0, 0, 0, 0),rgba(0, 0, 0, 0.15),rgba(0, 0, 0, 0));
    background-image: -moz-linear-gradient(left,rgba(0,0,0,0),rgba(0,0,0,0.15),rgba(0,0,0,0));
    background-image: -ms-linear-gradient(left,rgba(0,0,0,0),rgba(0,0,0,0.15),rgba(0,0,0,0));
    background-image: -o-linear-gradient(left,rgba(0,0,0,0),rgba(0,0,0,0.15),rgba(0,0,0,0));
}

input[type="text"],[type="email"],[type="number"],[type="password"]:focus{
outline: none;
box-shadow: 0px 0px 5px #61C5FA;
border:1px solid #5AB0DB;
}

input[type="text"]:hover{
border: 1px solid #999;
border-radius: 5px;
}

input[type="text"]:focus:hover{
outline: none;
box-shadow: 0px 0px 5px #61C5FA;
border:1px solid #5AB0DB;
border-radius:0;

}  


.panel-login input[type="text"],.panel-login input[type="email"],
.panel-login input[type="password"] {
    height: 45px;
    border: 1px solid #ddd;
    font-size: 16px;
    -webkit-transition: all 0.1s linear;
    -moz-transition: all 0.1s linear;
    transition: all 0.1s linear;
}
.panel-login input:hover,
.panel-login input:focus {
    outline:none;
    -webkit-box-shadow: none;
    -moz-box-shadow: none;
    box-shadow: none;
    border-color: #ccc;
}
.btn-login {
    background-color:#3D9DB3;
    outline: none;
    color: #fff;
    font-size: 14px;
    height: auto;
    font-weight: normal;
    padding: 14px 0;
    text-transform: uppercase;
    border-color: #2d92a9;
}
.btn-login:hover,
.btn-login:focus {
    color: #fff;
    background-color: #198da8;
    border-color: #53A3CD;
}
.btn-register {
    background-color: #17ae47;
    outline: none;
    color: #fff;
    font-size: 14px;
    height: auto;
    font-weight: normal;
    padding: 14px 0;
    text-transform: uppercase;
    border-color: #1CB94A;
}
.btn-register:hover,
.btn-register:focus {
    color: #fff;
    background-color: #1CA347;
    border-color: #1CA347;
}

.fullscreen_bg {
    position: fixed;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    background-size: cover;
    background-position: 50% 50%;
    background-image: url('https://wallpaperscraft.com/image/apple_brand_imac_desk_keyboard_79998_1680x1050.jpg');
    background-repeat:repeat;
  }

.panel-heading a{
    font-size: 48px;
    color: rgb(6, 106, 117);
    padding: 2px 0 10px 0;
    font-family: 'FranchiseRegular','Arial Narrow',Arial,sans-serif;
    font-weight: bold;
    text-align: center;
    padding-bottom: 30px;
}

.panel-heading a{
    background: -webkit-repeating-linear-gradient(-45deg, 
    rgb(18, 83, 93) , 
    rgb(18, 83, 93) 20px, 
    rgb(64, 111, 118) 20px, 
    rgb(64, 111, 118) 40px, 
    rgb(18, 83, 93) 40px);
    -webkit-text-fill-color: transparent;
    -webkit-background-clip: text;
}

</style>
</head>

<script>
$(function() {

    $('#login-form-link').click(function(e) {
		$("#login-form").delay(100).fadeIn(1000);
 		$("#register-form").fadeOut(100);
		$('#register-form-link').removeClass('active');
		$(this).addClass('active');
		e.preventDefault();
	});
	$('#register-form-link').click(function(e) {
		$("#register-form").delay(100).fadeIn(1000);
 		$("#login-form").fadeOut(100);
		$('#login-form-link').removeClass('active');
		$(this).addClass('active');
		e.preventDefault();
	});

});

//Mobile Validation
function check()
{

    var pass1 = document.getElementById('mobile');


    var message = document.getElementById('message');

   var goodColor = "#0C6";
    var badColor = "red";

    if(mobile.value.length!=10){

       
        message.style.color = badColor;
        message.innerHTML = "Required 10 digits !!"
    }}
    
    function checkAdrs()
    {
    	var pass1 = document.getElementById('mobile');


        var message = document.getElementById('message');
    	if(Address.value.length==0)
    		{
    		   message.style.color = badColor;
    	        message.innerHTML = "Address Required !!"
    		}
    	
    }




// DOB
 $(document).ready(function(){
      var date_input=$('input[name="date"]'); //our date input has the name "date"
      var container=$('.bootstrap-iso form').length>0 ? $('.bootstrap-iso form').parent() : "body";
      var options={
        format: 'mm/dd/yyyy',
        container: container,
        todayHighlight: true,
        autoclose: true,
      };
      date_input.datepicker(options);
    })

</script>


<body>



<%
		if (session != null) {
			if (session.getAttribute("email") != null) {
				String email = (String) session.getAttribute("email");
				out.print("Hello, " + email + "  Welcome to your Profile");
			} /* else {
				response.sendRedirect("Login.jsp");
			} */
		}
	%>


			<div id="fullscreen_bg" class="fullscreen_bg"/>
<div id="regContainer" class="container">
      <div class="row">
      <div class="col-md-6 col-md-offset-3">
        <div class="panel panel-login">
          <div class="panel-heading">
            <div class="row">
              <div class="col-xs-6">
                <a href="#" class="active" id="login-form-link" style="font-size: 25px">Seller Login</a>
              </div>
              <div class="col-xs-6">
                <a href="#" id="register-form-link" style="font-size: 25px">Register</a>
              </div>
            </div>
            <hr>
          </div>
          
          <div class="panel-body">
            <div class="row">
              <div class="col-lg-12">
                <form id="login-form" action="LoginSellerServlet" method="post" role="form" style="display: block;">
                  <div class="form-group">
                    <label for="username">Email ID</label>
                    <input type="text" name="email" id="username" tabindex="1" class="form-control" placeholder="Username" value="">
                  </div>
                  <div class="form-group">
                    <label for="password">Password</label>
                    <input type="password" name="password" id="password" tabindex="2" class="form-control" placeholder="Password">
                  </div>
                  <div class="form-group text-center">
                    <input type="checkbox" tabindex="3" class="" name="remember" id="remember">
                    <label for="remember"> Remember Me</label>
                  </div>
                  <div class="form-group">
                    <div class="row">
                      <div class="col-sm-6 col-sm-offset-3">
                        <input type="submit" name="login-submit" id="login-submit" tabindex="4" class="form-control btn btn-login" value="Log In">
                      </div>
                    </div>
                  </div>
                </form>
                
                
                <form id="register-form" action="sellerreg.jsp" method="post" role="form" style="display: none;">
                  <div class="form-group">
                    <label for="username">Name</label>
                    <input type="text" name="name" id="name" tabindex="1" class="form-control" placeholder="Username" value="">
                  </div>
                  <div class="form-group">
                    <label for="password">Email</label>
                    <input type="email" name="email" id="emailId" tabindex="2" class="form-control" placeholder="Password" required="required">
                  </div>
                  
                  
                 <!-- Date input -->
                   <div class="form-group"> 
       					 <label class="control-label" for="date">Date of birth</label>
       					 <input class="form-control" id="date" tabindex="4" name="dob" placeholder="MM/DD/YYY" type="text"/>
    			  </div>
    			  
                  <div class="form-group">
                    <label for="Gender">Gender</label>&emsp;&emsp;
								<label class="radio-inline"><input type="radio" name="gender"><strong>Male</strong></label>
								<label class="radio-inline"><input type="radio" name="gender"><strong>Female</strong></label>
	                  </div>
	                  
	                     <div class="form-group">
                    <label for="Address">Address</label>
                    <input type="text" name="address" id="Address" tabindex="5" class="form-control" placeholder="Address" required onkeyup="checkAdrs(); return false;" ><span id="message"></span>
                  </div>
                  
                     <div class="form-group">
                    <label for="mobile">Mobile</label>
                    <input type="number" name="mobile" id="mobile" tabindex="5" class="form-control" placeholder="Mobile Number" pattern="\d{3}[\-]\d{3}[\-]\d{4}" required onkeyup="check(); return false;" ><span id="message"></span>
                  </div>
                  
	                   <div class="form-group">
                    <label for="password">Password</label>
                    <input type="password" name="password" id="password" tabindex="6" class="form-control" placeholder="Password">
                  </div>
                  
                  <div class="form-group">
                    <div class="row">
                      <div class="col-sm-6 col-sm-offset-3">
                        <input type="submit" name="register-submit" id="register-submit" class="form-control btn btn-register" value="Register Now">
                      </div>
                    </div>
                  </div>
                  </form>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <%@ include file ="Footer.jsp" %>     
</body>
</html>