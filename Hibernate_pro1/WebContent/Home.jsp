                                    
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


</head>
<style>
.img1{
position:center;
}
.img2{
text-align: center;

}

footer{
position:relative;

}

</style>



<body>

<%@ include file="navbar.jsp" %>
<div class="container ml-5">
  <div class="row">
  <img src="image/Women1.png"class="img2" height="400" width="960" />
    
  </div><br>
  <h2 style="text-align:center;font-family: cursive"> Auction Bidding Platform</h2>
   </div>
   <div class="container ml-5">
<div class="row">
  <img src="image/mb.png" class="img1" height="400" width="960" />
    
  </div>
  </div>
 
  
 <!-- 
  <iframe src="FetchDetails.jsp" height="900" width="1050">
  
</iframe>
 -->
   <%@ include file ="FetchDetails.jsp" %> 

<footer>
 <%@ include file ="Footer.jsp" %>
 </footer>  
    
</body>
</html>