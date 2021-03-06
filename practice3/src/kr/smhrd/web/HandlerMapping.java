package kr.smhrd.web;

import java.util.HashMap;

import kr.smhrd.controller.BoardArticleController;
import kr.smhrd.controller.BoardArticleDeleteController;
import kr.smhrd.controller.BoardArticleFixCompleteController;
import kr.smhrd.controller.BoardArticleFixController;
import kr.smhrd.controller.BoardCntSearchController;
import kr.smhrd.controller.BoardCommentDeleteController;
import kr.smhrd.controller.BoardCommentInsertController;
import kr.smhrd.controller.BoardEquipmentController;
import kr.smhrd.controller.BoardIndexController;
import kr.smhrd.controller.BoardLevelSearchController;
import kr.smhrd.controller.BoardLikeSearchController;
import kr.smhrd.controller.BoardLikeaddController;
import kr.smhrd.controller.BoardLikedeleteController;
import kr.smhrd.controller.BoardLoginController;
import kr.smhrd.controller.BoardLogoutController;
import kr.smhrd.controller.BoardMemberpageController;
import kr.smhrd.controller.BoardMypageController;
import kr.smhrd.controller.BoardProfileController;
import kr.smhrd.controller.BoardSLController;
import kr.smhrd.controller.BoardSearchPageController;
import kr.smhrd.controller.BoardSignupController;
import kr.smhrd.controller.BoardSignupInsertController;
import kr.smhrd.controller.BoardUpdateprofileController;
import kr.smhrd.controller.BoardWriteController;
import kr.smhrd.controller.BoardWriteFormController;
import kr.smhrd.controller.BoardYoutubeController;
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
		mappings.put("/commentDelete.do", new BoardCommentDeleteController());
		mappings.put("/logout.do", new BoardLogoutController());
		mappings.put("/insert.do", new BoardSignupInsertController());
		mappings.put("/profile.do", new BoardProfileController());
		mappings.put("/updateprofile.do", new BoardUpdateprofileController());
		mappings.put("/searchpage.do", new BoardSearchPageController());
		mappings.put("/profile.do", new BoardProfileController());
		mappings.put("/searchpage.do", new BoardSearchPageController());
		mappings.put("/updateprofile1.do", new BoardUpdateprofileController());
		mappings.put("/updateprofile.do", new BoardUpdateprofileController());
		mappings.put("/likesearch.do", new BoardLikeSearchController());
		mappings.put("/cntsearch.do", new BoardCntSearchController());
		mappings.put("/levelsearch.do", new BoardLevelSearchController());
		mappings.put("/likeadd.do", new BoardLikeaddController());
		mappings.put("/likedelete.do", new BoardLikedeleteController());
		mappings.put("/ArticleDelete.do", new BoardArticleDeleteController());
		mappings.put("/ArticleFix.do", new BoardArticleFixController());
		mappings.put("/ArticleFixComplete.do", new BoardArticleFixCompleteController());
		mappings.put("/youtube.do", new BoardYoutubeController());
		mappings.put("/equipment.do", new BoardEquipmentController());
	}
	public Controller getController(String key) {
		return mappings.get(key);
	}
}
