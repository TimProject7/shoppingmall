package bookshop.command;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bookshop.bean.CartDBBean;



public class CartUpdateProAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request,HttpServletResponse response){
		try{
			request.setCharacterEncoding("UTF-8");
			
			int cart_id = Integer.parseInt(request.getParameter("cart_id"));
			byte buy_count = Byte.parseByte(request.getParameter("buy_count"));
			
			//cart_id 에 해당하는 buy_count 의 값을 수정
			CartDBBean bookProcess = CartDBBean.getInstance();
			bookProcess.updateCount(cart_id, buy_count);		
		}catch (Exception e) {
			System.out.println("CartUpdateProAction 에러 :");
			e.printStackTrace();
		}
		
		
		return "/cart/cartUpdatePro.jsp";
	}
}