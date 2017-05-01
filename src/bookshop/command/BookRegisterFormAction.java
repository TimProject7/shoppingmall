package bookshop.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BookRegisterFormAction implements CommandAction {
	@Override
	public String requestPro(HttpServletRequest request,HttpServletResponse response)throws Throwable{
		try{
			request.setAttribute("type", new Integer(0));
		}catch (Exception e) {
			System.out.println("BookRegisterFormAction 에러 : ");
			e.printStackTrace();
		}
		return "/mngr/productProcess/bookRegisterForm.jsp";
	}
}