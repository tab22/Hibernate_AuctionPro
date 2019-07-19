<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"/>
<style>


.navbar-brand {
  padding: 0 15px;
  height: 80px;
  line-height: 80px;
}

.nav-link{
   font-size:15px;
   margin-left:10px;
}

.navbar-toggle {
  /* (80px - button height 34px) / 2 = 23px */
  margin-top: 23px;
  padding: 9px 10px !important;
}

  


.card-body{
	font-family:fantasy;
	padding:0.5rem;
}

/* .card{
	background-color: #fff;
	border:2px solid rgba(0,0,0,.125);
	border-radius:0;
	height:100%;width:80%;
	border-color: maroon;
	
	} */
	
	.card{
	-webkit-box-shadow: -4px 3px 23px 13px rgba(97,72,35,0.86);
	-moz-box-shadow: -4px 3px 23px 13px rgba(97,72,35,0.86);
	box-shadow: -4px 3px 23px 13px rgba(97,72,35,0.86);
	border-radius:30px;
	}
	
	.card-footer{
	-webkit-box-shadow: -4px 3px 23px 13px rgba(97,72,35,0.86);
	-moz-box-shadow: -4px 3px 23px 13px rgba(97,72,35,0.86);
	box-shadow: -4px 3px 23px 13px rgba(97,72,35,0.86);
	border:1px solid;
	border-radius:30px;
	
	}
	
	.img-fluid{
		-webkit-box-shadow: -4px 2px 18px 9px rgba(191,74,53,0.98);
		-moz-box-shadow: -4px 2px 18px 9px rgba(191,74,53,0.98);
		box-shadow: -4px 2px 18px 9px rgba(191,74,53,0.98);
		border: 1px solid brown;
	
	}
	
	#setBid{
	margin:15px;
	}
	
	#setBid:hover{
	
		background-color:silver;
	}
	
	

</style>
</head>





<body>



<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" style="font-size: 50px;font-family: cursive;" href="Login.jsp">PSA.com</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>


 <div class="navbar-collapse collapse w-100 order-3 dual-collapse2"  id="navbarColor01">
        <ul class="navbar-nav ml-auto">
       <li class="nav-item active">
                <a class="nav-link"  href="#" style="font-size: 25px">Home</a><span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#" style="font-size: 25px">About Us </a>
            </li>
              <li class="nav-item">
                <a class="nav-link" href="#" style="font-size: 25px">Contact</a>
            </li>
              <li class="nav-item">
                <a class="nav-link" href="Bidder_Registration.jsp" style="font-size: 25px">Bidder </a>
            </li>
            
            <li class="nav-item">
                <a class="nav-link" href="Seller_Registration.jsp" style="font-size: 25px">Seller</a>
            </li>
        </ul>
    </div>
</nav>


       
      

<div id="divCard" class="container mt-5" >
<div class="row">
<div class="card-deck">
	<div class="card cardSet1 col-4">
		<div class="card-body">
			<img src="Auction_image/Laptop.jpg" class="img-fluid" alt="loading...">
			<h3 class="card-title">Laptop for sell</h3>
			<h5 class="card-subtitle" style="font-family:cursive">Area of laptop </h5>
			<input type="submit" id="setBid" style="" value="Set bid">
			<a href="#" style="font-family: serif;margin-left:20px;">Know More</a>
			</div>
		<div class="card-footer bg-light">
      		<small class="text-primary">Last updated 3 mins ago</small>
    	</div>
	</div>

	<div class="card cardSet2 col-4">
		<div class="card-body">
			<img src="Auction_image/Laptop.jpg" class="img-fluid" alt="loading...">
			<h3 class="card-title">Laptop for sell</h3>
			<h5 class="card-subtitle" style="font-family:cursive">Area of laptop </h5>		
			<input type="submit" id="setBid" style="" value="Set bid">
		    <a href="#" style="font-family: serif;margin-left:20px;">Know More</a>
			
			
		</div>
		<div class="card-footer">
      		<small class="text-primary">Last updated 3 mins ago</small>
    	</div>
	</div>
	
	<div class="card cardSet3 col-4">
		<div class="card-body">
			<img src="Auction_image/Laptop.jpg" class="img-fluid" alt="loading...">
			<h3 class="card-title">Laptop for sell</h3>
			<h5 class="card-subtitle"  style="font-family:cursive">Area of laptop </h5>
			<input type="submit" id="setBid" style="" value="Set bid">
		   <a href="#" style="font-family: serif;margin-left:20px;">Know More</a>
			
	   </div>
		<div class="card-footer">
      		<small class="text-primary">Last updated 3 mins ago</small>
    	</div>
	</div>
	
	<div class="card cardSet4 col-4">
		<div class="card-body">
			<img src="Auction_image/Laptop.jpg" class="img-fluid" alt="loading...">
			<h3 class="card-title">Laptop for sell</h3>
			<h5 class="card-subtitle" style="font-family:cursive">Area of laptop </h5>
			<input type="submit" id="setBid" value="Set bid">
			<a href="#" style="font-family: serif;margin-left:20px;">Know More</a>
		</div>
		<div class="card-footer">
      		<small class="text-primary">Last updated 3 mins ago</small>
    	</div>
	</div>
</div>
</div>

<div class="row container mt-5" >	
	<div class="card cardSet5 col-4">
		<div class="card-body">
			<img src="Auction_image/Laptop.jpg" class="img-fluid" alt="loading...">
			<h3 class="card-title" style="">Laptop for sell</h3>
			<h5 class="card-subtitle" style="font-family:cursive">Area of laptop </h5>
			<input type="submit" id="setBid" style="" value="Set bid">
     		<a href="#" style="font-family: serif;margin-left:20px;">Know More</a>	
		</div>
		<div class="card-footer">
      <small class="text-primary">Last updated 3 mins ago</small>
    </div>
	</div>
</div>   
</div>       
</body>
</html>