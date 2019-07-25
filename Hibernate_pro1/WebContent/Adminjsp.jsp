
<%@page import="com.dao.in.SellerProfileDaoImpl"%>
<%@page import="com.dao.in.SellerProfileDao"%>
<%@page import="com.model.in.SellerProfile"%>
<%@page import="com.util.HibernateUtil"%>
<%@page import="java.util.List"%>
    <%@page import="org.hibernate.*"%>
<%@page import="javax.persistence.criteria.*"%>
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
		Session s =null;
		Transaction tx=null; 		
		 try{
			 s=HibernateUtil.getSession();
		 tx = s.beginTransaction();
		CriteriaBuilder builder = s.getCriteriaBuilder();
		CriteriaQuery<SellerProfile> query = builder.createQuery(SellerProfile.class);
		Root<SellerProfile> root = query.from(SellerProfile.class);
		query.select(root);
		Query<SellerProfile> q=s.createQuery(query);
		List<SellerProfile> seller=q.getResultList();
		for (SellerProfile seller1 : seller)
		{
		   
			 out.println("<tr><td>"+seller1.getPrice()+
						"</td><td>"+seller1.getProduct_name()+"</td><td>"+seller1.getTime()+
						"</td><td> <a href='deleteCandidate/?id='"+seller1.getProduct_id()+" name='button' class='btn btn-danger' >Delete Candidate</a></td></tr>");
			 
		}
		 }
		 catch(Exception e)
		 {
			 e.printStackTrace();
		 }finally{
			 s.close();
		 }
		
 %>>
    
    
    
</body>
</html>

