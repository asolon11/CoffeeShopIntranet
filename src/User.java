
public class User {
	
	int userId;
	String username;
	String password;
	boolean isAdmin;
	boolean loggedIn; /*boolean field to check if user is logged in or not to show certain features*/
	
	public User(int userId, String username, String password, boolean isAdmin, boolean loggedIn) {
		super();
		this.userId = userId;
		this.username = username;
		this.password = password;
		this.isAdmin = isAdmin;
		this.loggedIn = loggedIn;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public boolean isAdmin() {
		return isAdmin;
	}

	public void setAdmin(boolean isAdmin) {
		this.isAdmin = isAdmin;
	}

	public boolean isLoggedIn() {
		return loggedIn;
	}

	public void setLoggedIn(boolean loggedIn) {
		this.loggedIn = loggedIn;
	}
	
	

}
