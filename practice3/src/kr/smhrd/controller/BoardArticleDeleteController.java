package kr.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.smhrd.util.ArticleDAO;
import kr.smhrd.util.CommentDAO;
import kr.smhrd.util.SuperVO;

public class BoardArticleDeleteController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		int article_num = Integer.parseInt(request.getParameter("article_num"));
		
		SuperVO vo = new SuperVO();
		vo.setArticle_num(article_num);
		
		ArticleDAO dao = new ArticleDAO();
		dao.ArticleDelete(article_num);
		
		return  "redirect:/mypage.do";
	}
		
		
		
		
	
	

}
