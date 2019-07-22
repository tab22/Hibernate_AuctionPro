

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Seller Profile</title>
<style>
body{
	margin:0;
	padding:0;
	background: url(image/3_Hammer.jpg);
	background-size:cover; 
	font-family: sans-serif;
}

.form-area{
	position:absolute;
	top:50%;
	left:50%;
	transform:translate(-50%,-50%);
	width:500px;
	height:650px;
	box-sizing: border-box;
	background: rgba(0,0,0,0.5);
	padding:40px;
	

}

h3{
	margin:0;
	padding:0 0 20px;
	font-weight:bold;
	color:white;
}

.form-area p{
margin:0;
	padding:0;
	font-weight:bold;
	color:white;
}

.form-area input,select{
	margin-bottom:20px;
	width:100%;
	
}

.form-area input[type=text],
.form-area input[type=number],
.form-area input[type=file],
.form-area input[type=time]
{
	border:none;
	border-bottom: 1px solid #ffffff;
	background-color: transparent;
	outline:none;
	height:40px;
	color:#ffffff;
	display:16px;
	
	
}

::placeholder{
	color:gray;
	
	
	
}

.form-area input[type=submit]{
	border:none;
	height:40px;
	outline:none;
	color:#ffffff;
	font-size: 15px;
	background-color:tomato;
	cursor:pointer;
	border-radius:20px;
	
}


.form-area input[type=submit]:hover{
	background-color:cyan;
	color:black;
	
}


.form-area a{
	color:#ffffff;
	text-decoration:none;
	font-size:14px;
	font-weight:bold;
}
</style>
</head>
<body>

<%-- 	<%
	String name=request.getParameter("name");  
	session.setAttribute("user",name); 
	%>
 --%>
<div class="form-area">
	
	<h3 style="text-align:center;font-family: cursive;font-size: 30px">Seller Details</h3>
	
	<form action="SellerProfilereg.jsp"><p></p>

	<p>Product Name</p>
	<input type="text" name="product_name" id="ProductName" placeholder="Product_name">
	
	<br><br><p>Description</p>
	<input type="text" name="description" id="Description" placeholder="Description">
	
	
	<br><br><p>Upload image</p><br>
	<p><input type="file" name="image" accept="Auction_image/*">
     
     
    <br><br><p>Price</p>
	<input type="number" name="price" id="Price" placeholder="Price" min="1000" max="8000" required>
	
	
	
	<br><br><p>DATE &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
	<input type="text" id="appt" name="time" min="9:00" max="18:00" required>	
       <span style="color:white">(mon date,year)</span>

	
     <input type="submit">
     
    
     </form>
    
</div>


</body>
</html>