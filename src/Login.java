

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//				response.getWriter().append("Served at: ").append(request.getContextPath());
		
		request.getRequestDispatcher("/WEB-INF/Login.jsp").forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		List<User> users = (List<User>) getServletContext().getAttribute("users");
		boolean foundUser = false;
		for(User user : users){
			if(user.username.equals(username) && user.password.equals(password)){
				foundUser=true;
				request.getSession().setAttribute("userid", user.userId);
				request.getSession().setAttribute("username", user.username);
		        request.getSession().setAttribute("isAdmin", user.isAdmin);
		        request.getSession().setAttribute("loggedIn", user.loggedIn); 
		        response.sendRedirect("Homepage");
		        return;
			}
		}
		if(!foundUser){
			System.out.println("User not found");
			response.sendRedirect("Login?message=username%20and%20password%20combination%20not%20found");
		}
		
	}

}

