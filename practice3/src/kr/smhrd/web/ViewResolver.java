package kr.smhrd.web;

public class ViewResolver {
	
	private ViewResolver() {}
	
	// "boardList" -> "/WEB-INF/board/boardList.jsp"
	public static String makeViewUrl(String view) {
		return "/WEB-INF/board/" + view + ".jsp";
	}
}
