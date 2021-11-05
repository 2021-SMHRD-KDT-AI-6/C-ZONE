package kr.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.smhrd.util.CommentDAO;
import kr.smhrd.util.MbVO;

public class BoardUpdateprofile1Controller implements Controller{

	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		int mb_num = Integer.parseInt(request.getParameter("mb_num"));
		String mb_profile_pic = request.getParameter("mb_profile_pic");
		String mb_nickname = request.getParameter("mb_nickname");
		
		MbVO vo = new MbVO();
        vo.setMb_num(mb_num);
        vo.setMb_profile_pic(mb_profile_pic);
        vo.setMb_nickname(mb_nickname);
		
		CommentDAO dao = new CommentDAO();
		dao.Updateprofile1(vo); // 수정성공->리스트로..
		
    	return "redirect:/mypage.do";
	}

}
