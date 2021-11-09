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
		// �Ķ���ͼ���(UserVO) <=id, password
				String mb_id = request.getParameter("mb_id");
				String mb_pwd = request.getParameter("mb_pwd");
				MbVO vo = new MbVO();
				vo.setMb_id(mb_id);
				vo.setMb_pwd(mb_pwd);
				
				// ������Ʈ �Ҷ��� �ؿ� UserDAO�� �����ȴ� 
				
				String page = null;
				ArticleDAO dao = new ArticleDAO();
				
				MbVO succ = dao.isLogin(vo);
				
				System.out.println(succ);
				
				//-----------------------------------------------
				if(succ!=null) { // ȸ����������
					// ȸ�������� �����ߴٴ� ǥ�ø� �޸𸮿� �صξ���Ѵ�.
		            HttpSession session=request.getSession();
		            session.setAttribute("succ", succ);
		            page = "redirect:/Index.do";
				}else{//ȸ����������
				page= "loginalert";
				}
				return page;
	}
}
