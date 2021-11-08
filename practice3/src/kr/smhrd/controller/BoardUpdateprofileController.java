package kr.smhrd.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import kr.smhrd.util.ArticleDAO;
import kr.smhrd.util.CommentDAO;
import kr.smhrd.util.MbVO;

public class BoardUpdateprofileController implements Controller{

	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String savePath = request.getRealPath("/upload"); 
	    int sizeLimit = 10 * 1024 * 1024;
	         
	    MultipartRequest multiRequest = new MultipartRequest(request, savePath,sizeLimit, "UTF-8", new DefaultFileRenamePolicy());
	    String mb_profile_pic = multiRequest.getFilesystemName("pic_fix_input");
	    
	    HttpSession session = request.getSession();
	    
	    MbVO vo2 = (MbVO)session.getAttribute("succ");  
	    System.out.println("기존 프로필 사진"+vo2.getMb_profile_pic());
		if(mb_profile_pic==null) {
			mb_profile_pic = vo2.getMb_profile_pic().replace("upload\\", "");
		}
		System.out.println("바꾼 프로필 사진"+mb_profile_pic);
	    
	    
	    int mb_num = Integer.parseInt(multiRequest.getParameter("mb_num"));
	    String mb_nickname = multiRequest.getParameter("nickname_fix_input");

		MbVO vo = new MbVO();
        vo.setMb_num(mb_num);
        vo.setMb_profile_pic("upload"+File.separator+mb_profile_pic);
        vo.setMb_nickname(mb_nickname);
        
		CommentDAO dao = new CommentDAO();
		dao.Updateprofile(vo); // 수정성공->리스트로..
		
    	return "redirect:/mypage.do?mb_num=" + mb_num;
	}
}
