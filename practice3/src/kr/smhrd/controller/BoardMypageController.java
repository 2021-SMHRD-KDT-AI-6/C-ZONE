package kr.smhrd.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.smhrd.util.ArticleDAO;
import kr.smhrd.util.MbVO;
import kr.smhrd.util.SuperVO;

public class BoardMypageController implements Controller{
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		
		MbVO vo = (MbVO)session.getAttribute("succ");
		
		ArticleDAO dao = new ArticleDAO();
		List<SuperVO> list = dao.memberpage(vo.getMb_num());
		request.setAttribute("list", list);
		return "mypage";
	}
}
