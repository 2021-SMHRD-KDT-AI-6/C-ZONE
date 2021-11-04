package kr.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.smhrd.util.ArticleDAO;
import kr.smhrd.util.MbVO;

public class BoardSignupInsertController implements Controller{
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

    	request.setCharacterEncoding("utf-8");
		String mb_id = request.getParameter("mb_id");
		String mb_pwd = request.getParameter("mb_pwd");
		String admin_yn = request.getParameter("admin_yn");
		String mb_profile_pic = request.getParameter("mb_profile_pic");
		String mb_nickname = request.getParameter("mb_nickname");
	     
		// »ý¼ºÀÚ
		MbVO vo = new MbVO();
		vo.setMb_id(mb_id);
		vo.setMb_pwd(mb_pwd);
		vo.setAdmin_yn(admin_yn);
		vo.setMb_profile_pic(mb_profile_pic);
		vo.setMb_nickname(mb_nickname);

    
    	ArticleDAO dao = new ArticleDAO();
    	dao.boardSignupInsert(vo);
    	
		return "redirect:/login.do";
	}
}
