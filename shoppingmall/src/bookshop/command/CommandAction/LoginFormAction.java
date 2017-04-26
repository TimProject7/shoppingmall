package bookshop.command.CommandAction;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bookshop.bean.CommandAction;

public class LoginFormAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse Response) throws Throwable {
		// TODO Auto-generated method stub
		
		request.setAttribute("type", new Integer(1));
		return "/memer/loginForm.jsp";
	}

}
