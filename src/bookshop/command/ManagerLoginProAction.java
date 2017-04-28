﻿package bookshop.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bookshop.bean.MngrDBBean;


public class ManagerLoginProAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request,HttpServletResponse response)throws Throwable{
		request.setCharacterEncoding("utf-8");//한글인코딩
		
		//넘어온 요청의 데이터를 얻어냄
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		
		//DB와 연동해서 사용자의 인증을 처리
		MngrDBBean dbPro = MngrDBBean.getinstance();
		int check = dbPro.userCheck(id, passwd);
		
		//해당 뷰(응답페이지)로 보낼 내용을 request 속성에 지정
		request.setAttribute("check", new Integer(check));
		System.out.println("check"+check);
		request.setAttribute("id", id);
		System.out.println("id"+id);
		return "/mngr/logon/mLoginPro.jsp";
	}
}