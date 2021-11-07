package kr.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.smhrd.util.CommentDAO;
import kr.smhrd.util.SuperVO;

public class BoardCommentDeleteController implements Controller{

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String comment_num = request.getParameter("comment_num");
		int article_num = Integer.parseInt(request.getParameter("article_num"));
		
		SuperVO vo = new SuperVO();
		vo.setComment_num(comment_num);
		
		CommentDAO dao = new CommentDAO();
		dao.CommentDelete(comment_num);
		
		return  "redirect:/article.do?article_num=" + article_num;
	}

}
