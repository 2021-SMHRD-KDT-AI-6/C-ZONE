package kr.smhrd.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.smhrd.util.ArticleDAO;
import kr.smhrd.util.SuperVO;

public class BoardSearchPageController implements Controller{

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String search = request.getParameter("search");
		ArticleDAO dao = new ArticleDAO();
		if(search == null) {
			List<SuperVO> list = dao.Index();
			request.setAttribute("list", list);
			return "searchpage";
		}else {
			List<SuperVO> list = dao.search(search);
			request.setAttribute("list", list);
			return "searchpage";
		}
	}

}
