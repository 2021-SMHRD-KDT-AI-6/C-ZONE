package kr.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import kr.smhrd.util.ArticleDAO;
import kr.smhrd.util.SuperVO;

public class BoardWriteController implements Controller{
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
				String article_title = request.getParameter("article_title");
				String article_content = request.getParameter("article_content");
				int mb_num = Integer.parseInt(request.getParameter("mb_num"));
				String carping_level = request.getParameter("carping_level");
				String latitude = request.getParameter("latitude");
				String longitude = request.getParameter("longitude");
				String carping_pic1 = request.getParameter("carping_pic1");
				
				
				SuperVO vo = new SuperVO();
				vo.setArticle_title(article_title);
				vo.setArticle_content(article_content);
				vo.setMb_num(mb_num);
			    vo.setCarping_level(carping_level);
			    vo.setLatitude(latitude);
			    vo.setLongitude(longitude);
			    vo.setCarping_pic1(carping_pic1);
			
				 ArticleDAO dao = new ArticleDAO();
				 dao.write(vo);
				 return "Index";
//				return "redirect:/article.do?article_num="+vo.getArticle_num();
	}
}

