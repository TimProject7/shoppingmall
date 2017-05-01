package bookshop.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bookshop.bean.LogonDBBean;



public class DeleteProAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request,HttpServletResponse response){
		try{
			String id = request.getParameter("id");
			String passwd = request.getParameter("passwd");
			
			//사용자가 입력한 id, passwd 를 가지고 회원 정보 삭제 후 성공 여부 반환
			LogonDBBean manager = LogonDBBean.getinstance();
			int check = manager.deleteMember(id, passwd);
			
			request.setAttribute("check", new Integer(check));
		}catch (Exception e) {
			System.out.println("DeleteProAction 에러 :");
			e.printStackTrace();
		}
		
		
		return "/member/deletePro.jsp";
	}
}