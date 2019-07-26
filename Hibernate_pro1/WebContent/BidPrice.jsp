
<%@page import="com.dao.in.BidnowDaoImpl"%>
<%@page import="com.dao.in.BidnowDao"%>
<%@page import="com.model.in.Bidnow"%>
 <%@page import="java.util.List"%>

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

<br>
<br>

<%
     BidnowDao bid= new BidnowDaoImpl();
       List<Bidnow>eList = bid.max();%>
     
  Max Bid<%=eList%>

  <br>
  
<%
     BidnowDao bid1= new BidnowDaoImpl();
       List<Bidnow>eList1 = bid1.Max_product_id();%>
     
  BidDerid<%=eList1%>

 
  <br>	
  
  
<%-- <%
     BidnowDao bid1= new BidnowDaoImpl();
        List<Bidnow>eList1 = bid1.ShowAll();
           for (Bidnow f:eList1)
        	{
        	
%>	

 Bidder =  <%=f.getBidder_id()%><br>
 Product id = <%=f.getProduct_id()%>
  
  <%} %>	 --%>	

</body>
</html>