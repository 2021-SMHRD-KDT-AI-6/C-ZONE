package kr.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.smhrd.util.CommentDAO;
import kr.smhrd.util.SuperVO;

public class BoardCommentInsertController implements Controller{

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int article_num = Integer.parseInt(request.getParameter("article_num"));
		int mb_num = Integer.parseInt(request.getParameter("mb_num"));
		String comment_content = request.getParameter("comment_content");
		
		SuperVO vo = new SuperVO();
		vo.setMb_num(mb_num);
		vo.setComment_content(comment_content);
		vo.setArticle_num(article_num);
		
		CommentDAO dao = new CommentDAO();
		dao.CommentInsert(vo);
		
		return "redirect:/article.do?article_num=" + vo.getArticle_num();
	}

}
