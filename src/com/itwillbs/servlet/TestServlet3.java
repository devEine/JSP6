package com.itwillbs.servlet;

import java.io.IOException;
import java.net.Authenticator.RequestorType;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/test3")  
//web.xml에서의 매핑이랑 같은 역할(간단)
public class TestServlet3 extends HttpServlet{
	//http://localhost:8088/JSP6/test3
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("doGET()호출 !!");
		
		//doPost(req, resp);
		
		//request영역에 number=100값을 Arrays.jsp에 전달
		req.setAttribute("number", 100);
		
		//request 영역에 배열정보를 전달 
		String[] menu = {"밀면","햄버거","피자","한식","초밥","도시락"};
		req.setAttribute("menu", menu);
		
		ArrayList<String> movies = new ArrayList<>();
		movies.add("공조");
		movies.add("한산");
		movies.add("nope");
		movies.add("탑건");
		req.setAttribute("movies", movies);
		
		
		RequestDispatcher dis = req.getRequestDispatcher("./servlet1/Arrays.jsp");
		dis.forward(req, resp);
	}
}
