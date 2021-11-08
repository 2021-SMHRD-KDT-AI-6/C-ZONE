package kr.smhrd.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.smhrd.util.*;

// POJO
public class BoardLevelSearchController implements Controller{
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
//		상, 중, 하 가져온다
		
		String carping_level = request.getParameter("carping_level");
		
		ArticleDAO dao = new ArticleDAO();
		List<SuperVO> list = dao.levelsearch(carping_level);
		request.setAttribute("list", list);
		
		return "searchpage";
	}
}
