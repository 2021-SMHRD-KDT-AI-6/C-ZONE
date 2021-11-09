package kr.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.smhrd.util.CheckIdDAO;

@WebServlet("/checknickname.do")
public class ChecknicknameController extends HttpServlet {
		
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			request.setCharacterEncoding("UTF-8");
			response.setCharacterEncoding("EUC-KR");
			
			String mb_nickname = request.getParameter("mb_nickname");
			PrintWriter out = response.getWriter();
			CheckIdDAO dao = new CheckIdDAO();
			
			int nicknameCheck = dao.checkNickname(mb_nickname);
			if(nicknameCheck == 0) {
				System.out.println("�̹� �����ϴ� �г����Դϴ�.");
			}else if(nicknameCheck == 1) {
				System.out.println("��밡���� �г����Դϴ�.");
			}
			
			out.write(nicknameCheck + "");
		}
		
	}


