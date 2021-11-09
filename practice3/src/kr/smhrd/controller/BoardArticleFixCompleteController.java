package kr.smhrd.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import kr.smhrd.util.ArticleDAO;
import kr.smhrd.util.SuperVO;

public class BoardArticleFixCompleteController implements Controller{

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String savePath = request.getRealPath("/upload"); 
		int sizeLimit = 10 * 1024 * 1024;
		
		MultipartRequest multiRequest = new MultipartRequest(request, savePath, sizeLimit, "UTF-8", new DefaultFileRenamePolicy());
		
		
		int article_num = Integer.parseInt(multiRequest.getParameter("article_num"));
		String article_title = multiRequest.getParameter("article_title");
		String article_content = multiRequest.getParameter("article_content");
		String carping_level = multiRequest.getParameter("carping_level");
		double latitude = Double.parseDouble(multiRequest.getParameter("latitude"));
		double longitude = Double.parseDouble(multiRequest.getParameter("longitude"));
		String filename = multiRequest.getFilesystemName("carping_pic1");
		
		SuperVO vo = new SuperVO();
		vo.setArticle_title(article_title);
		vo.setArticle_num(article_num);
		vo.setArticle_content(article_content);
		vo.setCarping_level(carping_level);
	    vo.setLatitude(latitude);
	    vo.setLongitude(longitude);
	    vo.setCarping_pic1("upload"+File.separator+filename);
	    
	    ArticleDAO dao = new ArticleDAO();
	    dao.articlefixcomplete(vo);
	    
	    
	    
	    
		return "redirect:/mypage.do";
	}

}
