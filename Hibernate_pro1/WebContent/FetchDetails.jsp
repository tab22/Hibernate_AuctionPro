y<%@page import="com.dao.in.SellerProfileDaoImpl"%>
<%@page import="com.dao.in.SellerProfileDao"%>
 <%@page import="java.util.List"%>
<%@page import="com.model.in.SellerProfile"%>
<%@page import="java.io.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<style>
div.gallery {
  margin: 5px;
  border: 1px solid #ccc;
  float: left;
  width: 330px;
}

div.gallery:hover {
  border: 1px solid #777;
}

div.gallery img {
  width: 100%;
  
}

p {
  text-align: center;
  font-size: 60px;
  margin-top: 0px;
}
</style>
<title>Insert title here</title>
</head>
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

<br>



 <form method="Post" action="ImageServlet">
<%
    SellerProfileDao sellerproductDao= new SellerProfileDaoImpl();
        List<SellerProfile>eList = sellerproductDao.ShowAll();
        int i=0;
        
        
        for (SellerProfile f:eList)
        	{
        	
        	System.out.println("jsp-"+f.getProduct_id());
        	
        	
  %>
<div class="gallery">
 
 
 
 <img src="http://localhost:8085/Hibernate_pro/ShowImage?id=<%=f.getProduct_id()%>"width="600" height="400"/>
 <h3 class="card-title"><%=f.getProduct_id()%></h3>
			<h5 class="card-subtitle" style="font-family:cursive"><%=f.getProduct_name() %> </h5>
			
  <div class="desc"><%=f.getDescription()%></div>
 
 <!-- <form action="InsertBidder.jsp" method="post">
   <input type="sumbit" class ="btn btn-success" value="Bid Now">

</form> -->

 <a href=" InsertBidder.jsp">Bid Now</a>
 
<script>


var countDownDate = new Date("<%=f.getTime()%>").getTime();

document.write(countDownDate);

     

     var x = setInterval(function() {

 
  var now = new Date().getTime();
    
 
  var distance = countDownDate - now;
    
  
  
  var days = Math.floor(distance / (1000 * 60 * 60 * 24));
  var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
  var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
  var seconds = Math.floor((distance % (1000 * 60)) / 1000);
    
 
  document.getElementById("<%=f.getProduct_id()%>").innerHTML = days + "d " + hours + "h "
  + minutes + "m " + seconds + "s ";
    
 
  if (distance < 0) {
    clearInterval(x);
    document.getElementById("demo").innerHTML = "EXPIRED";
  }
}, 1000);
</script> 
   <p id="<%=f.getProduct_id()%>"></p>
</div>


<%} %>

  
  </form>
  
  </body>
</html>


 