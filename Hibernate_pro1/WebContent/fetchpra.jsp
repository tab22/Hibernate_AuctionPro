<%@page import="com.dao.in.SellerProfileDaoImpl"%>
<%@page import="com.dao.in.SellerProfileDao"%>
<%@page import="java.util.List"%>
<%@page import="com.model.in.SellerProfile"%>
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
  width: 300px;
}

div.gallery:hover {
  border: 1px solid #777;
}

div.gallery img {
  width: 100%;
  
}


</style>
<title>Insert title here</title>
</head>
<body>



<%
    SellerProfileDao sellerproductDao= new SellerProfileDaoImpl();
        List<SellerProfile>eList = sellerproductDao.ShowAll();
        for (SellerProfile f:eList)
        	
        {
  %>
<div class="gallery">
 <img src="<%=f.getImage() %>"width="600" height="400"/>
 <h3 class="card-title"><%=f.getProduct_id()%></h3>
			<h5 class="card-subtitle" style="font-family:cursive"><%=f.getProduct_name() %> </h5>
		     </a>
  <div class="desc"><%=f.getDescription()%></div>
</div>


<%} %>
  </body>
</html>


 