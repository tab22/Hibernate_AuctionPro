<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"/>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">

<title>Insert title here</title>
</head>
<style>
.navbar
{
	background: rgb(42,26,127);
background: linear-gradient(90deg, rgba(42,26,127,1) 0%, rgba(57,57,162,1) 35%, rgba(33,189,165,1) 100%);

}



.navbar-brand {
  padding: 0 15px;
  height: 80px;
  line-height: 80px;
  color:black;
}

.nav-link{
   font-size:15px;
   margin-left:10px;
   color:black;
}

.navbar-toggle {
  /* (80px - button height 34px) / 2 = 23px */
  margin-top: 23px;
  padding: 9px 10px !important;
  
}

  
</style>
<body>

<nav class="navbar navbar-expand-lg">
  <a class="navbar-brand" style="font-size: 50px;font-family: cursive;" href="Login.jsp">PSA.com</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>


 <div class="navbar-collapse collapse w-100 order-3 dual-collapse2"  id="navbarColor01">
        <ul class="navbar-nav ml-auto">
       
            <li class="nav-item">
                <a class="nav-link" href="AboutUs.jsp" style="font-size: 25px">About Us </a>
            </li>
              <li class="nav-item">
                <a class="nav-link" href="contactus.jsp" style="font-size: 25px">Contact</a>
            </li>
              <li class="nav-item">
                <a class="nav-link" href="Home.jsp" style="font-size: 25px">Logout</a>
            </li>
            
           
        </ul>
    </div>
</nav>



</body>
</html>