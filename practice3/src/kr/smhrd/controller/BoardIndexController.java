package kr.smhrd.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.smhrd.util.*;

// POJO
public class BoardIndexController implements Controller{
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ArticleDAO dao = new ArticleDAO();
		List<SuperVO> list = dao.Index();
		request.setAttribute("list", list);
		// View�� ��θ� ���� ���ڿ��� �������ִ� ����
		return "Index";
	}
}
