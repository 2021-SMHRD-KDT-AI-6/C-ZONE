package kr.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.smhrd.util.ArticleDAO;
import kr.smhrd.util.SuperVO;

public class BoardMypageController implements Controller{
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String mb_id = request.getParameter("mb_id");
		ArticleDAO dao = new ArticleDAO();
		SuperVO vo= dao.mypage(mb_id);
		request.setAttribute("vo",vo);
		return "mypage";
	}
}
