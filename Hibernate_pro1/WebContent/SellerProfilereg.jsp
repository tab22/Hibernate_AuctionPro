
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


 <jsp:useBean id="emp" class="com.model.in.SellerProfile" />
 <jsp:setProperty property="*" name="emp"/>
 <%
 SellerProfileDao sellerDao= new SellerProfileDaoImpl();
 int id=sellerDao.insert(emp);
    
 %>
 
<%@ include file="successfull.jsp" %>
</body>
</html>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     