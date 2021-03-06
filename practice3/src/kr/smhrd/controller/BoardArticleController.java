package kr.smhrd.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.smhrd.util.ArticleDAO;
import kr.smhrd.util.CommentDAO;
import kr.smhrd.util.MbVO;
import kr.smhrd.util.SuperVO;

public class BoardArticleController implements Controller{

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//상세보기 하기전에 버튼눌러서 cnt증가시키고 나서 article.do로 이동
		HttpSession session=request.getSession();
		MbVO vo2 = (MbVO)session.getAttribute("succ");
		int mb_num = vo2.getMb_num();
		int article_num = Integer.parseInt(request.getParameter("article_num"));
//		int article_cnt = Integer.parseInt(request.getParameter("article_cnt"));
//		SuperVO vo = new SuperVO();
//		vo.setArticle_cnt(article_cnt);
		ArticleDAO dao = new ArticleDAO();
		//조회수1증가시키고 데이터 가져오기.
		dao.updatecnt(article_num);
		
		SuperVO lvo = new SuperVO();
		lvo.setMb_num(mb_num);
		lvo.setArticle_num(article_num);
		
		SuperVO result = dao.heart(lvo);
		request.setAttribute("result",result);
				
		SuperVO vo = dao.article(article_num);
		request.setAttribute("vo", vo);
		CommentDAO dao2 = new CommentDAO();
		List<SuperVO> list = dao2.CommentList(article_num);
		request.setAttribute("list", list);
		return "article";
	}

}
