package servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import pojo.DB;
import pojo.Item;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

import org.apache.catalina.connector.Response;

@WebServlet("/InsertItemServlet")
@MultipartConfig
public class InsertItemServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String price = request.getParameter("price");
		Part filePart = request.getPart("imgg");
		String path = filePart.getSubmittedFileName();
		
		
		Item i = new Item(name, price, path);
		
		try {
			DB db = new DB();
//			if(db.insert(i)) {
//				String error = "error";
//				response.sendRedirect("insertItem.jsp?error="+error);
//			} else {
				db.insert(i);
				ArrayList<Item> list = new ArrayList<Item>();
				list = db.getItem();
				
				request.setAttribute("item", list);
				request.getRequestDispatcher("resultItem.jsp").forward(request, response);
//			}
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
