package kr.smhrd.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.smhrd.util.ArticleDAO;
import kr.smhrd.util.CommentDAO;
import kr.smhrd.util.SuperVO;

public class BoardArticleController implements Controller{

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//�󼼺��� �ϱ����� ��ư������ cnt������Ű�� ���� article.do�� �̵�
		int article_num = Integer.parseInt(request.getParameter("article_num"));
//		int article_cnt = Integer.parseInt(request.getParameter("article_cnt"));
//		SuperVO vo = new SuperVO();
//		vo.setArticle_cnt(article_cnt);
		ArticleDAO dao = new ArticleDAO();
		//��ȸ��1������Ű�� ������ ��������.
		dao.updatecnt(article_num);
		
		SuperVO vo = dao.article(article_num);
		request.setAttribute("vo", vo);
		
		CommentDAO dao2 = new CommentDAO();
		List<SuperVO> list = dao2.CommentList(article_num);
		request.setAttribute("list", list);
		return "article";
	}

}
