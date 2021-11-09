package kr.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.smhrd.util.CheckIdDAO;

@WebServlet("/checkid.do")
public class CheckidController extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("EUC-KR");
		
		String mb_id = request.getParameter("mb_id");
		PrintWriter out = response.getWriter();
		
		CheckIdDAO dao = new CheckIdDAO();
		
		int idCheck = dao.checkId(mb_id);
		
		if(idCheck == 0) {
			System.out.println("이미 존재하는 아이디입니다.");
		}else if(idCheck == 1) {
			System.out.println("사용가능한 아이디입니다.");
		}
		
		out.write(idCheck + "");
	}

	}


