<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"/>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<title>Forgot password</title>
<style>
.form-gap {
    padding-top: 70px;
   
}
.panel
{
	
	border:2px solid blue;
	
}

/* body {
  background-color: #b2b2b2;
  background-color: rgba(0, 0, 0, .3);
}
 */
body {
background: rgb(26,127,120);
background: linear-gradient(90deg, rgba(26,127,120,1) 0%, rgba(85,233,226,1) 35%, rgba(25,120,105,1) 100%);
}

#hammer {
    display: block;
    margin: auto;
    animation: hammer 5s  2s linear infinite;
 }
@keyframes hammer {
    0%    { transform: rotateY(0deg);  
    }
    100%  { transform: rotateY(360deg);}
 }
 
#bidNow{
	animation:blinkingText 0.8s infinite;
}
@keyframes blinkingText{
	0%{		color: maroon;	}
	49%{	color: transparent;	}
	50%{	color: transparent;	}
	99%{	color:transparent;	}
	100%{	color: #000;	}
}

input[type="text"]{
outline: none;
border:1px solid #5AB0DB;
-webkit-box-shadow: 1px 0px 46px -9px rgba(32,62,179,1);
-moz-box-shadow: 1px 0px 46px -9px rgba(32,62,179,1);
box-shadow: 1px 0px 46px -9px rgba(32,62,179,1);



}

         
</style>
</head>
<body>
	
	<div class="form-gap"></div>
<div class="container">
	<div class="row">
		<div class="col-md-4 col-md-offset-1">
            <div class="panel panel-default" style="height:100%;width:250%;">
              <div class="panel-body">
                <div class="text-center">
                 <img id="hammer" src="image/bid1.png" width="300" height="200">
                
                  <p></p>
                  <div class="panel-body">
    
                    <form id="register-form" role="form" autocomplete="off" class="form" method="post" action="BidPrice.jsp">
    
                      <div class="form-group">
                        <div class="input-group">
                      </div>
                      <div class="form-group">
        					<h4><b>Bid Price </b></h4><input type="text" id="setPrice" name="price" class="setPrice" style="margin-left:30px;height:50px;width:60%"><br>
          
                        <b><input name="submit" id="bidNow" class="btn btn-md btn-primary btn-block" value="Bid now" type="submit" style="font-size:20px;margin-left:45%;margin-top:40px;height:50px;width:100px"></b>
                      </div>
                      
                      <input type="hidden" class="hide" name="token" id="token" value=""> 
                      </div>
                    </form>
    
                  </div>
                </div>
              </div>
            </div>
          </div>
	</div>
</div>
</body>
</html>