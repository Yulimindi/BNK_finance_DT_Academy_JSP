package servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import pojo.Dog;
import pojo.DogDB;

import java.io.IOException;
import java.util.ArrayList;

@MultipartConfig
@WebServlet("/GetDogTableServlet")
public class GetDogTableServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			DogDB db = new DogDB();
			ArrayList<Dog> list = db.getDog();
			request.setAttribute("list", list);
			request.getRequestDispatcher("mydog.jsp").forward(request, response);
		} catch (Exception e) {

			e.printStackTrace();
		}
	}


}
