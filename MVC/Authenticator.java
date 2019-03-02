package mvc;

public class Authenticator 
{
	public String authenticate(String username, String password) {
		if (("priya".equalsIgnoreCase(username))
				&& ("2911".equals(password))) {
			return "Success";
		} else {
			return "failure";
		}
	}
}
