
<%@page import="com.model.in.SellerProfile"%>
<%@page import="java.io.ByteArrayOutputStream"%>
<%@page import="java.io.InputStream"%>
<%@page import="com.dao.in.SellerProfileDaoImpl"%>
<%@page import="com.dao.in.SellerProfileDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


 <%

Part image=request.getPart("image");
 String description=request.getParameter("description");
 String product_name=request.getParameter("product_name");
 String price=request.getParameter("price");
 String time=request.getParameter("time");
 

 InputStream inputStream = null;
 
 try{
	 inputStream = image.getInputStream();
	 
	 ByteArrayOutputStream os=new  ByteArrayOutputStream();
     byte buffer[]=new byte[1024];
     int len;
     
     while((len=inputStream.read(buffer))!=-1)
     {
  	   os.write(buffer,0,len);
     }
     byte[] bytes = os.toByteArray();
     
     SellerProfile sProf=new SellerProfile();
     sProf.setDescription(description);
     sProf.setImage(bytes);
     sProf.setPrice(Integer.parseInt(price));
     //sProf.setProduct_id(Integer.parseInt(product_name));
     sProf.setProduct_name(product_name);
     sProf.setTime(time);
     
     
     
     
     
 }
 catch(Exception e)
 {
	 out.write(e.getMessage());
 }
	
 %>
 
<%@ include file="successfull.jsp" %>
</body>
</html>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     