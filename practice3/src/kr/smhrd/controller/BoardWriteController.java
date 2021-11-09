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

public class BoardWriteController implements Controller{
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		String savePath = request.getRealPath("/upload"); 
		int sizeLimit = 10 * 1024 * 1024;
	
			
		// TODO Auto-generated method stub
				MultipartRequest multiRequest = new MultipartRequest(request, savePath, sizeLimit, "UTF-8", new DefaultFileRenamePolicy());
								
				String article_title = multiRequest.getParameter("article_title");
				String article_content = multiRequest.getParameter("article_content");
				int mb_num = Integer.parseInt(multiRequest.getParameter("mb_num"));
				String carping_level = multiRequest.getParameter("carping_level");
				double latitude = Double.parseDouble(multiRequest.getParameter("latitude"));
				double longitude = Double.parseDouble(multiRequest.getParameter("longitude"));
//				String carping_pic1 = request.getParameter("carping_pic1");
				String filename = multiRequest.getFilesystemName("carping_pic1");
				System.out.println(savePath+File.separator+filename);
				
				SuperVO vo = new SuperVO();
				vo.setArticle_title(article_title);
				vo.setArticle_content(article_content);
				vo.setMb_num(mb_num);
			    vo.setCarping_level(carping_level);
			    vo.setLatitude(latitude);
			    vo.setLongitude(longitude);
			    //vo.setCarping_pic1(carping_pic1);
			    vo.setCarping_pic1("upload"+File.separator+filename);
			
				ArticleDAO dao = new ArticleDAO();
				dao.write(vo);
				System.out.println(vo.getArticle_num());
				
				int article_num = dao.writeView();
//				return "redirect:/Index.do";
 				return "redirect:/article.do?article_num=" + article_num;
	}
}

