package kr.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.smhrd.util.ArticleDAO;
import kr.smhrd.util.SuperVO;

public class BoardArticleFixController implements Controller{

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		int article_num = Integer.parseInt(request.getParameter("article_num"));
		
		ArticleDAO dao = new ArticleDAO();
		SuperVO vo = dao.articlefix(article_num);
		request.setAttribute("vo",vo);
		
		return "articlefix";
	}

}
