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
		
		int mb_num = vo.getMb_num();
		
		ArticleDAO dao = new ArticleDAO();
		List<SuperVO> list = dao.memberpage(mb_num);
		request.setAttribute("list", list);
		
		MbVO succ = dao.isLogin(vo);
		System.out.println(succ);
        session.setAttribute("succ", succ);
		
		return "mypage";
	}
}
