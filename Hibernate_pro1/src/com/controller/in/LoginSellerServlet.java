package com.controller.in;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.in.Bidder;
import com.model.in.Seller;
import com.services.in.LoginService;

/**
 * Servlet implementation class LoginSellerServlet
 */
@WebServlet("/LoginSellerServlet")
public class LoginSellerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginSellerServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String email = request.getParameter("email");   
	     String password = request.getParameter("password");
	     
	     LoginService loginService = new LoginService();
	     boolean result = loginService.authenticateSeller(email, password);
	     Seller seller = loginService.getSellerByUserId(email);
	   	     if(result == true){
	         request.getSession().setAttribute("email", email);      
	         response.sendRedirect("SellerProfile.jsp");
	     }
	     else{
	         response.sendRedirect("error.jsp");
		
		
		
		
		
		
		
	     }
	}
		
		
		
		
		
		
		
		
		
	}


