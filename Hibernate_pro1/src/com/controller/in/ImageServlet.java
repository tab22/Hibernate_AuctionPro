package com.controller.in;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.dao.in.SellerProfileDao;
import com.dao.in.SellerProfileDaoImpl;
import com.model.in.SellerProfile;

/**
 * Servlet implementation class ImageServlet
 */
@MultipartConfig
@WebServlet("/ImageServlet")
public class ImageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ImageServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Part image=request.getPart("image");
		 String description=request.getParameter("description");
		 String product_name=request.getParameter("product_name");
		 String price=request.getParameter("price");
		 String time=request.getParameter("time");
		 

		 InputStream inputStream = null;
		 
		 try{
			 inputStream = image.getInputStream();
			 
			 ByteArrayOutputStream os=new  ByteArrayOutputStream();
		     byte buffer[]=new byte[1024];
		     int len;
		     
		     while((len=inputStream.read(buffer))!=-1)
		     {
		  	   os.write(buffer,0,len);
		     }
		     byte[] bytes = os.toByteArray();
		     
		     SellerProfile sProf=new SellerProfile();
		     sProf.setDescription(description);
		     sProf.setImage(bytes);
		     sProf.setPrice(Integer.parseInt(price));
		     //sProf.setProduct_id(Integer.parseInt(product_name));
		     sProf.setProduct_name(product_name);
		     sProf.setTime(time);
		     
		     SellerProfileDao sp=new SellerProfileDaoImpl();
		    int res= sp.insert(sProf);
		     if(res>0) {
		    	 System.out.println("Success");
		     }
		     else
		     {
		    	 System.out.println("Failed");
		     }
		     
		     
		 }
		 catch(Exception e)
		 {
			System.out.println(e.getMessage());
		 }
		
		
		
		
	}

}
