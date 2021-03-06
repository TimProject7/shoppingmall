﻿package bookshop.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bookshop.bean.MngrDBBean;

public class BookDeleteProAction implements CommandAction {
	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		try{
			int book_id = Integer.parseInt(request.getParameter("book_id"));
			String book_kind = request.getParameter("book_kind");

			// DB 연동 - book_id 에 해당하는 상품을 삭제
			MngrDBBean bookProcess = MngrDBBean.getinstance();
			bookProcess.deleteBook(book_id);

			request.setAttribute("book_kind", book_kind);
		}catch (Exception e) {
			System.out.println("BookDeleteProAction 에러:");
			e.printStackTrace();
		}
		
		return "/mngr/productProcess/bookDeletePro.jsp";
	}

}