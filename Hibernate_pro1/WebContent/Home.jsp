
<%@page import="com.dao.in.SellerProfileDaoImpl"%>
<%@page import="com.dao.in.SellerProfileDao"%>
<%@page import="java.util.List"%>
<%@page import="com.model.in.SellerProfile"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"/>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">

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

	}
	
	.card-footer{
	-webkit-box-shadow: -4px 3px 23px 13px rgba(97,72,35,0.86);
	-moz-box-shadow: -4px 3px 23px 13px rgba(97,72,35,0.86);
	box-shadow: -4px 3px 23px 13px rgba(97,72,35,0.86);
	border:1px solid;
	border-radius:30px;
	
	}
	
	.img-fluid{
	
	
	}
	
	#setBid{
	margin:15px;
	}
	
	#setBid:hover{
	
		background-color:silver;
	}
	
	
	.footer {

   left: 0;
   bottom: 0;
   width: 100%;
   height: 20%;
   background-color: #212529;
   text-align: center;
   }
   p{
    
    margin-top:20px;margin-left: 50px;color: whitesmoke;
    font-size: 20px;
}
i{
   
font-size:20px;
margin-top: 10px;
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
                <a class="nav-link"  href="Home.jsp" style="font-size: 25px">Home</a><span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#" style="font-size: 25px">About Us </a>
            </li>
              <li class="nav-item">
                <a class="nav-link" href="contactus.jsp" style="font-size: 25px">Contact</a>
            </li>
              <li class="nav-item">
                <a class="nav-link" href="InsertBidder.jsp" style="font-size: 25px">Bidder </a>
            </li>
            
            <li class="nav-item">
                <a class="nav-link" href="InsertSeller.jsp" style="font-size: 25px">Seller</a>
            </li>
        </ul>
    </div>
</nav>
 <iframe src="FetchDetails.jsp" height="800" width="1000">
  
</iframe>
 
 
 
 <%@ include file ="Footer.jsp" %>     
</body>
</html>