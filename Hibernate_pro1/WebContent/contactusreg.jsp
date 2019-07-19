<%@page import="com.dao.in.ContactUsDaoImpl"%>
<%@page import="com.dao.in.ContactUsDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="emp" class="com.model.in.ContactUs" />
 <jsp:setProperty property="*" name="emp"/>
 <%
 ContactUsDao contactDao= new ContactUsDaoImpl();
 int id=contactDao.insert(emp);
    
 %>
   Record inserted with <%=id %>






</body>
</html>