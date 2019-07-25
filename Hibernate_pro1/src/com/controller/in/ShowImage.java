package com.controller.in;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.in.SellerDaoImpl;
import com.dao.in.SellerProfileDaoImpl;
import com.model.in.SellerProfile;

/**
 * Servlet implementation class ShowImage
 */
@WebServlet("/ShowImage")
public class ShowImage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShowImage() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
int id=Integer.parseInt(request.getParameter("id"));

List<SellerProfile> getImages=new SellerProfileDaoImpl().ShowAll();
for (SellerProfile sellerProfile : getImages) {
	
	if(id==sellerProfile.getProduct_id())
	{
		
		response.setHeader("Content-Type", "image/jpg");//contentType);
		response.getOutputStream().write(sellerProfile.getImage());
	}
	
}
	}

	

}
