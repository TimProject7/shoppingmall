package bookshop.process;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface CommandAcion {
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable;
}
