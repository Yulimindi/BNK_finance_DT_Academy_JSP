package servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import pojo.Dog;
import pojo.DogDB;

import java.io.File;
import java.io.IOException;

@MultipartConfig
@WebServlet("/InsertDogServlet")
public class InsertDogServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String age = request.getParameter("age");
		Part filePart = request.getPart("url");
		String url = filePart.getSubmittedFileName();
		String savePath = getServletContext().getRealPath("/images");
		
		if(url != null && !url.isEmpty()) {
			filePart.write(savePath + File.separator + url);
		}
		Dog d = new Dog(name, age, url);
		DogDB db;
		
		try {
			db = new DogDB();
			db.insertDog(d);
			response.sendRedirect("mydog.jsp?result=true");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
