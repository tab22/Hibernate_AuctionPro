 package com.controller.in;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.in.BidderDao;
import com.dao.in.BidderDaoImpl;


@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Login() {
        super();
        
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		  
	  System.out.println(email + " :: " + password);
		 
		  String page = "BidderProfile.jsp";

		  if(email.trim().length() >= 0 && email != null &&
		    password.trim().length() >= 0 && password != null) {
			  
		   BidderDao loginService = new BidderDaoImpl();
		   
		   boolean flag = loginService.login(email, password);
		  
		   if(flag) {
		    System.out.println("Login success!!!");
		    request.setAttribute("email", email);
		    request.setAttribute("msg", "Login Success.....");
		    page = "homepractice.jsp";
		    	 
		   } 
		   else {
			   request.setAttribute("msg", "Wrong Username or Password, Try again!!!");
		   }
		  } else {
		   request.setAttribute("msg", "Please enter username and password...");
		  }
		  request.getRequestDispatcher(page).include(request, response);
		 }
	}


