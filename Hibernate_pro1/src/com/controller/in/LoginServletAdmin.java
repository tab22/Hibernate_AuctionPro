package com.controller.in;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginServletAdmin
 */
@WebServlet("/LoginServletAdmin")
public class LoginServletAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServletAdmin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String m_option=request.getParameter("");
	        String url=null;
	        
	        if(m_option.equals("insert")){
	       	 
	       	 url="InsertSeller.html";
	        }
	        
	        RequestDispatcher rd=request.getRequestDispatcher(url);
	        rd.forward(request, response);

		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		  PrintWriter out=response.getWriter();  
			String email=request.getParameter("email");  
		        String password=request.getParameter("password");  
		          
		        if(email.equals("psa@gmail.com")&&password.equals("admin123")){  
		        out.print("<h1 color:red>Welcome, "+email+"</h1>");  
		        HttpSession session=request.getSession();  
		        session.setAttribute("email",email); 
		        request.getRequestDispatcher("AdminFetch.jsp").include(request, response); 
		        }  
		        else{  
		            out.print("Sorry, username or password error!");  
		            request.getRequestDispatcher("Admin.jsp").include(request, response);  
		        }  
		        out.close(); 
		
		
		
	}

}
