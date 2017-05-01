package bookshop.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bookshop.bean.LogonDBBean;


public class ConfirmIdAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request,HttpServletResponse response){
		try{
			request.setCharacterEncoding("UTF-8");
			String id = request.getParameter("id");
			
			//주어진 id의 중복여부를 체크해 값을 반환
			LogonDBBean manager = LogonDBBean.getinstance();
			int check = manager.confirmid(id);
			
			request.setAttribute("check", new Integer(check));
		}catch (Exception e) {
			System.out.println("ConfirmIdAction 에러 :");
			e.printStackTrace();
		}
		
		return "/member/confirmId.jsp";
	}
}