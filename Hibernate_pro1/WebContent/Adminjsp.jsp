
<%@page import="com.dao.in.SellerProfileDaoImpl"%>
<%@page import="com.dao.in.SellerProfileDao"%>
<%@page import="com.model.in.SellerProfile"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

    <%
    int pno=Integer.parseInt(request.getParameter("product_id"));
    String time=request.getParameter("time");
    SellerProfileDao seller= new SellerProfileDaoImpl();
/*     seller.delete(pno); */
  
  /*   seller.update(time); */
         
    %>
    
    <h2> deleted</h2>
    
    
    
</body>
</html>

