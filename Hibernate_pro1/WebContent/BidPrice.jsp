
<%@page import="com.dao.in.BidnowDaoImpl"%>
<%@page import="com.dao.in.BidnowDao"%>



<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="emp" class="com.model.in.Bidnow" />
 <jsp:setProperty property="*" name="emp"/>


 <%
 BidnowDao selDao= new BidnowDaoImpl();
 int id=selDao.insert(emp);
    
 %>
 
Record Inserted Successfully <%= id %>
</body>
</html>