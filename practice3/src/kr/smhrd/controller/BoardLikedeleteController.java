package kr.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.smhrd.util.ArticleDAO;
import kr.smhrd.util.SuperVO;

public class BoardLikedeleteController implements Controller{

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {


	      int mb_num = Integer.parseInt(request.getParameter("mb_num"));
	      int article_num = Integer.parseInt(request.getParameter("article_num"));
	      
	      System.out.println("엠비넘버"+mb_num);
	      
	      SuperVO vo = new SuperVO();
	      vo.setMb_num(mb_num);
	      vo.setArticle_num(article_num);
	      
	      ArticleDAO dao = new ArticleDAO();
	      dao.likedeleteU(article_num);
	      System.out.println("출력 :"+vo.getArticle_num()+","+vo.getMb_num());
	      dao.likedelete(vo);		
		
		return "redirect:/article.do?article_num="+article_num;
	}

}
