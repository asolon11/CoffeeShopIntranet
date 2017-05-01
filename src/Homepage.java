

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
		User user1 = new User(0, "a1", "a1 lastname", "a1@test.com", "q", "1", true, true);				//admin test account
		User user2 = new User(1, "c1", "c1 lastname", "c1@test.com", "s", "2", false, true);			//regular customer test account
		List<User> users = new ArrayList<>();
		users.add(user1);
		users.add(user2);
		
		appContext.setAttribute("users", users);
		
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.getRequestDispatcher("/WEB-INF/Homepage.jsp").forward(request, response);
	}

	

}
