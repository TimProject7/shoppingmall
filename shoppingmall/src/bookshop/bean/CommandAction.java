package bookshop.bean;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface CommandAction {
	public String requestPro(HttpServletRequest request, HttpServletResponse Response) throws Throwable;

}
