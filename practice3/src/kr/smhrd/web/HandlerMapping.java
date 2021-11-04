package kr.smhrd.web;

import java.util.HashMap;

import kr.smhrd.controller.BoardArticleController;
import kr.smhrd.controller.BoardCommentInsertController;
import kr.smhrd.controller.BoardIndexController;
import kr.smhrd.controller.BoardLoginController;
import kr.smhrd.controller.BoardMemberpageController;
import kr.smhrd.controller.BoardMypageController;
import kr.smhrd.controller.BoardSLController;
import kr.smhrd.controller.BoardSearchController;
import kr.smhrd.controller.BoardSignupController;
import kr.smhrd.controller.BoardWriteController;
import kr.smhrd.controller.BoardWriteFormController;
import kr.smhrd.controller.Controller;

public class HandlerMapping {
	//       KEY           VALUE  
	// /boardList.do   ---> ?
	// /boardInsert.do ---> ?
	// /boardDelete.do ---> ?
	private HashMap<String, Controller> mappings;
	public HandlerMapping() {
		mappings = new HashMap<String, Controller>();
		mappings.put("/Index.do", new BoardIndexController());
		mappings.put("/login.do", new BoardLoginController());
		mappings.put("/signup.do", new BoardSignupController());
		mappings.put("/mypage.do", new BoardMypageController());
		mappings.put("/memberpage.do", new BoardMemberpageController());
		mappings.put("/writeForm.do", new BoardWriteFormController());
		mappings.put("/write.do", new BoardWriteController());
		mappings.put("/sl.do", new BoardSLController());
		mappings.put("/article.do", new BoardArticleController());
		mappings.put("/commentInsert.do", new BoardCommentInsertController());
		
	}
	public Controller getController(String key) {
		return mappings.get(key);
	}
}
