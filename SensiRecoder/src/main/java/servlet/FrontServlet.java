package servlet;

import java.io.IOException;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import commands.AbstractCommand;
import commands.CommandFactory;
import context.RequestContext;
import context.ResponseContext;
import context.WebRequestContext;

public class FrontServlet extends HttpServlet {

	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		doPost(req, res);
	}
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		System.out.println("idddddddd "+req.getParameter("id"));
		Map<String,String[]> map = req.getParameterMap();
		
		req.setCharacterEncoding("UTF-8");

		RequestContext rc = new WebRequestContext();
		rc.setParameterMap(map);
		rc.setRequest(req);
		AbstractCommand command = CommandFactory.getCommand(rc);
		command.init(rc);
		
		ResponseContext resc = command.execute();
		Object bean = resc.getResult();
		
		req.setAttribute("data", bean);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher(resc.getTarget());
		dispatcher.forward(req, res);
		
	}
}
