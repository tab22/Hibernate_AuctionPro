




<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Payment</title>
<style>
body{
	margin:0;
	padding:0;
	background: url(image/card.jpg);
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
	border-top:1px solid #ffffff;
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
	
	<h3 style="text-align:center;font-family: cursive;font-size: 30px">Payment Card</h3>
	
	<form action="paymentsuccessful.jsp"><p></p>

	<p>Name On Card</p><br>
	<input type="text" name="product_name" id="ProductName">
	
	
	<div class="row">
	<br><br><p>Card Number</p>
	<input type="text" name="description" id="Description" placeholder="---- / ---- / ---- / ----">
	
	</div>
	<br><br><p>Expiration Date &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;CVV</p>
	<p><input type="text" name="image" placeholder="MM / YY" style="width:30%">
     
     
    
	<input type="text" name="price" id="Price" placeholder="CVV" style="width: 20%;margin-left:125px"></p>
	
	
	
	
	<br>
     <input type="submit" name="pay" value="Make A Payment">
     
    
     </form>
    
</div>


</body>
</html>

