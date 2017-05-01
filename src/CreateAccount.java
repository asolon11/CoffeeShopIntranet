

import java.io.IOException;
import java.util.HashSet;
import java.util.List;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/CreateAccount")
public class CreateAccount extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/CreateAccount.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String email = request.getParameter("email");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		//Get list of users from application scope (Homepage.java)
		List<User> users = (List<User>)getServletContext().getAttribute("users");
		
		//To make sure id is unique.
		int newId = getNewId(users);
		
		//Creates new user object from submitted data
		User userFromForm = new User(newId, firstName, lastName, email, username, password, false, true);
		
		//Add new user to users list
		users.add(userFromForm);
		
		//Redirect to homepage after making account; user needs to login manually after making account.
		response.sendRedirect("Homepage");
	}
	
	private int getNewId(List<User> existingUsers) {
		int newId = existingUsers.size();
		HashSet<Integer> existingIds = new HashSet<>();
			for(User user : existingUsers) {
				existingIds.add(user.userId);
			}
			while(existingIds.contains(newId)){
				newId++;
			}
			return newId;
	}

}
