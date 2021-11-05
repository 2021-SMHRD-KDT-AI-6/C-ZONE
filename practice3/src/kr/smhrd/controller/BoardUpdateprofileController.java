package kr.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.smhrd.util.CommentDAO;
import kr.smhrd.util.MbVO;

public class BoardUpdateprofileController implements Controller{

	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		int mb_num = Integer.parseInt(request.getParameter("mb_num"));
		CommentDAO dao = new CommentDAO();
		MbVO vo = dao.Updateprofile(mb_num);
		
		request.setAttribute("vo", vo);
		
		return "profile";
	}

}
