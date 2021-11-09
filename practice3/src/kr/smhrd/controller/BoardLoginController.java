package kr.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.smhrd.util.ArticleDAO;
import kr.smhrd.util.MbVO;

public class BoardLoginController implements Controller{
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 파라메터수집(UserVO) <=id, password
				String mb_id = request.getParameter("mb_id");
				String mb_pwd = request.getParameter("mb_pwd");
				MbVO vo = new MbVO();
				vo.setMb_id(mb_id);
				vo.setMb_pwd(mb_pwd);
				
				// 프로젝트 할때는 밑에 UserDAO를 만들면된다 
				
				String page = null;
				ArticleDAO dao = new ArticleDAO();
				
				MbVO succ = dao.isLogin(vo);
				
				System.out.println(succ);
				
				//-----------------------------------------------
				if(succ!=null) { // 회원인증성공
					// 회원인증에 성공했다는 표시를 메모리에 해두어야한다.
		            HttpSession session=request.getSession();
		            session.setAttribute("succ", succ);
		            page = "redirect:/Index.do";
				}else{//회원인증실패
				page= "loginalert";
				}
				return page;
	}
}
