

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Homepage")
public class Homepage extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	@Override
	public void init(ServletConfig config) throws ServletException {
		super.init(config);
		
		ServletContext appContext = getServletContext();
		/* To have a sample user object to test login feature */
		User user1 = new User(0, "q", "1", true, true);
		List<User> users = new ArrayList<>();
		users.add(user1);
		
		appContext.setAttribute("users", users);
		
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		
        // check if a user has logged in or not
        /* if( request.getSession().getAttribute( "userid" ) == null ) {
            response.sendRedirect( "Login" );
            return;
        } */
		
//		request.setAttribute("pageHeader", "Welcome to Junimo Cafe!");
		request.getRequestDispatcher("/WEB-INF/Homepage.jsp").forward(request, response);
	}

	
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		doGet(request, response);
//	}

}
