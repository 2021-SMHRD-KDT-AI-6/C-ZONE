 package kr.smhrd.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.smhrd.controller.*;
import kr.smhrd.util.ArticleDAO;
import kr.smhrd.util.SuperVO;

@WebServlet("*.do")
public class BoardController extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String reqURL = request.getRequestURI();
		String cpath = request.getContextPath();
		String command = reqURL.substring(cpath.length());
		System.out.println(command);
		Controller controller = null;
		String view = null;
		// 2. HandlerMapping(핸들러매핑)
		HandlerMapping mapping = new HandlerMapping();
		controller = mapping.getController(command);
		view = controller.requestHandler(request, response);
		// 분기작업 한번에 하기
		if(view != null) {
			if(view.indexOf("redirect:") != -1) {
				response.sendRedirect(cpath+view.split(":")[1]); // Controller(FrontController)
			}else {
				RequestDispatcher rd = request.getRequestDispatcher(ViewResolver.makeViewUrl(view));
				rd.forward(request, response); // View(JSP)
			}
		}
	}

}
