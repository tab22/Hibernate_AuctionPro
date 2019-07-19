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
<title>Insert title here</title>
</head>
<body>
<table border="1">
  <%
    SellerProfileDao sellerproductDao= new SellerProfileDaoImpl();
        List<SellerProfile>eList = sellerproductDao.ShowAll();
        for(SellerProfile f:eList){
  %>
         <tr>
          <td><%=f.getProduct_id()%></td>
           <td><%=f.getProduct_name() %></td>
         <td><%=f.getImage() %></td>
         <td><%=f.getDescription()%></td> 
  
  <%} %>
  </table>
</body>
</html>