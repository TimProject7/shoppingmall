package bookshop.command;

public class RegisterFormAction implements CommandAction{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response)throws Throwable{
		
		request.setArrribute("type", new Integer(1));
		return "/member/registerForm.jsp";
		
	}
	
}
