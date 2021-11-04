package kr.smhrd.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.smhrd.util.ArticleDAO;
import kr.smhrd.util.MbVO;
import kr.smhrd.util.SuperVO;

public class BoardMemberpageController implements Controller{
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		int mb_num = Integer.parseInt(request.getParameter("mb_num"));
		
		ArticleDAO dao = new ArticleDAO();
		
		SuperVO vo = dao.memberprofile(mb_num);
		request.setAttribute("vo", vo);
		
		List<SuperVO> list= dao.memberpage(mb_num);
		request.setAttribute("list",list);
		
		return "memberpage";
	}
}
