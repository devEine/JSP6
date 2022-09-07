package com.itwillbs.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//http://localhost:8088/JSP6/test4
@WebServlet("/test4")
public class TestServlet4 extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//Phone객체생성하여 변수에 정보 저장
		Phone samsung = new Phone();
		samsung.setModel("fold4");
		samsung.setColor("black");
		samsung.setPrice(200);
		
		//사람 정보 생성
		Person kim = new Person();
		kim.setName("김학생");
		kim.setAge(20);
		kim.setPhone(samsung);//Phone의 객체 사용
		
		//사람의 정보를 'Beans.jsp'페이지 생성하여 정보전달 후 출력
		req.setAttribute("kim", kim);
		
		RequestDispatcher dis = req.getRequestDispatcher("./servlet1/Beans.jsp");
		dis.forward(req, resp);
	}
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
	}
}
