<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

</head>
<style>
body{
  width: 100%;
  height: auto;
  background: -webkit-linear-gradient(0deg, #3c96ff 0%, #2dfbff 100%);
 
  font-family: "Robato",sans-serif;
  font-size: 17px;
}

#logreg-forms{
    width:412px;
    margin:10vh auto;
    background-color:#ffffff4d;
    box-shadow: 0 7px 7px rgba(0, 0, 0, 0.12), 0 12px 40px rgba(0,0,0,0.24);
  transition: all 0.3s cubic-bezier(.25,.8,.25,1);
}

#logreg-forms form {
    width: 100%;
    max-width: 410px;
    padding: 15px;
    margin: auto;
}
#logreg-forms .form-control {
    position: relative;
    box-sizing: border-box;
    height: auto;
    padding: 10px;
    font-size: 16px;
}
#logreg-forms .form-control:focus { z-index: 2; }
#logreg-forms .form-signin input[type="email"] {
    margin-bottom: -1px;
    border-bottom-right-radius: 0;
    border-bottom-left-radius: 0;
}
#logreg-forms .form-signin input[type="password"] {
    border-top-left-radius: 0;
    border-top-right-radius: 0;
}

#logreg-forms .social-login{
    width:390px;
    margin:0 auto;
    margin-bottom: 14px;
}
#logreg-forms .social-btn{
    font-weight: 100;
    color:white;
    width:190px;
    font-size: 0.9rem;
}

#logreg-forms a{
    display: block;
    padding-top:10px;
    color:#fff;
}

#logreg-form .lines{
    width:200px;
    border:1px solid red;
}


#logreg-forms button[type="submit"]{ margin-top:10px; }

#logreg-forms .form-signup input { margin-bottom: 2px;}




}



</style>


<body>
    <div id="logreg-forms">
        <form class="form-signin" method="post" action="LoginServletAdmin">
            <h1 class="h3 mb-3 font-weight-normal" style="text-align: center"> Sign in</h1>
           
            <p style="text-align:center">Admin Login </p>
            <div class="input-group">
              <input type="text" id="inputEmail" class="form-control" placeholder ="Email address" required=""  name="email">
            </div>

            <div class="input-group">
              <input type="password" id="inputPassword" class="form-control" placeholder="Password" required="" name="password">
            </div>

            <div class="input-group">
              <button class="btn btn-md btn-rounded btn-block form-control submit btn btn-primary"  type="submit"><i class="fas fa-sign-in-alt"></i> Sign in</button>
            </div>

          
           
            </form>

           


    </div>

</body>
<script type="text/javascript">
function toggleResetPswd(e){
    e.preventDefault();
    $('#logreg-forms .form-signin').toggle() // display:block or none

}

function toggleSignUp(e){
    e.preventDefault();
    $('#logreg-forms .form-signin').toggle(); // display:block or none

}

})</script>
</html>