package com.itwillbs.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


//http://localhost:8088/JSP6/test
public class TestServlet2 extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println(" doGET()호출 ");
		
		//GET방식이 실행될 시, POST방식이 강제로 실행되도록
		doPost(req, resp);
		
		//request 영역에 정보 저장
		req.setAttribute("cnt", new Integer(1000));
		
		//session 영역에 정보 저장
		//session.setAttribute(); 불가능 -> JAVA코드기 때문에 객체정보 session이 없음
		//JSP에는 객체정보 session 및 영역정보 있음
		
		//session객체 생성
		HttpSession session = req.getSession();
		//session객체정보 변수명을 session으로 지정
		session.setAttribute("cnt",2000);
		//session객체정보 사용하여 session영역에 정보 저장 
		
		//servlet1/Attribute.jsp페이지 이동 (forward방식으로)
		RequestDispatcher dis = req.getRequestDispatcher("./servlet1/Attribute.jsp");
		dis.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println(" doPOST()호출 ");
	}
}
