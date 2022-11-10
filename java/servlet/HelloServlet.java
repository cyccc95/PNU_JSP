package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/13Servlet/HelloServlet.do")
// 위 url로 접속하면 이 소스들을 실행시킴
public class HelloServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
		throws ServletException, IOException {
			req.setAttribute("message", "Hello Servlet..!!");
			req.getRequestDispatcher("/13Servlet/HelloServlet.jsp")
				.forward(req, resp);
		System.out.println("doGet");
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("doPost");
	}
	@Override
	protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("doDelete");
	}
	@Override
	protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("doPut");
	}
}

// Create Read Update Delete
// Post Get Put Delete
