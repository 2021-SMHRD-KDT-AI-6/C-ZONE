package kr.smhrd.web;

import java.util.HashMap;

import kr.smhrd.controller.BoardIndexController;
import kr.smhrd.controller.BoardLoginController;
import kr.smhrd.controller.BoardSignupController;
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
	}
	public Controller getController(String key) {
		return mappings.get(key);
	}
}