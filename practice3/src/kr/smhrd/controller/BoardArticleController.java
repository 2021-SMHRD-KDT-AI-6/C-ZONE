package kr.smhrd.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.smhrd.util.ArticleDAO;
import kr.smhrd.util.SuperVO;

public class BoardArticleController implements Controller{

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		int mb_num = Integer.parseInt(request.getParameter("mb_num"));
		ArticleDAO dao = new ArticleDAO();
		SuperVO vo = dao.article(mb_num);
		request.setAttribute("vo", vo);
	
		return "article";
	}

}
