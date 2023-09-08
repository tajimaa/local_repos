package context;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import beans.UserBean;

public class WebRequestContext implements RequestContext {
	private Map<String, String[]> parameters;
	private HttpServletRequest request;
	private HttpSession session = null;
	
	public WebRequestContext() {}
	
	@Override
	public String getCommandPath() {
		String path = request.getRequestURI();
		String[] commandPath = path.split("/");
		
		System.out.println("commandPath: "+ commandPath[3]);
		return commandPath[3];
	}

	@Override
	public String[] getParameter(String key) {
		
		return parameters.get(key);
	}
	
	@Override
	public void setParameterMap(Map<String, String[]> map) {
		parameters = map;
	}

	@Override
	public Object getRequest() {
		return request;
	}

	@Override
	public void setRequest(Object request) {
		this.request = (HttpServletRequest) request;
	}
	
	public void setUserBeanInSession(UserBean bean) {
		session = request.getSession();
		session.setAttribute("bean", bean);
	}
}
