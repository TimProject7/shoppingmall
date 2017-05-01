package bookshop.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bookshop.bean.BuyDBBean;
import bookshop.bean.BuyDataBean;

public class OrderListAction implements CommandAction {
	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		try {
			List<BuyDataBean> buyLists = null;
			int count = 0;

			// 전체주문 목록의 수를 얻어냄
			BuyDBBean buyProcess = BuyDBBean.getinstance();
			count = buyProcess.getListCount();

			if (count > 0) {// 주문목록이 있으면
				// 전체주문목록을 얻어냄
				buyLists = buyProcess.getBuyList();
				request.setAttribute("buyLists", buyLists);
			}
			request.setAttribute("count", new Integer(count));
			request.setAttribute("type", new Integer(0));
		} catch (Exception e) {
			System.out.println("OrderListAction 에러:");
			e.printStackTrace();
		}

		return "/mngr/orderedProduct/orderList.jsp";
	}

}