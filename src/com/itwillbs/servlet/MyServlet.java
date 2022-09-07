package com.itwillbs.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.Authenticator.RequestorType;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;





//http://localhost:8088/JSP6/MyServlet

public class MyServlet extends HttpServlet{
	//카운트 정보 
	private int cnt;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		System.out.println("GET방식 호출 발생! -doGet()실행");
		cnt++;
		System.out.println("cnt:"+cnt);
		
/*		resp.getWriter().append("text/html; charset=UTF-8");
		//=> 응답하는 정보의 타입을 html형태로 해석해라 
		//getWtiter되는 정보들을 모두 html형태로 출력 
		
		resp.getWriter().append("<h2> cnt:" + cnt+"</h2>");
		//html코드로 인식하여 출력 
		
		//PrintWriter 객체에 getWriter메서드 담아서 사용 
		PrintWriter myOut = resp.getWriter();
		myOut.println("<html>");
		myOut.println("<head>");
		myOut.println("</head>");
		myOut.println("<body>");
		myOut.println("<h1>안녕하세용</h1>");		
		myOut.println("<h1>cnt:"+cnt+"</h1>");		
		myOut.println("</body>");
		myOut.println("</html>");
		
		myOut.close();*/
		//println은 OutputStream이기때문에 성능향상 위해 사용 후 close()해야함 
		
		//서블릿의 html코드 사용은 불편한 점이 많음
		//JSP에서 코드 작성하고 이를 서블릿과 연결하면 편하지 않을까?
		//testServlet.jsp 페이지로 이동 
		//JSP방식 - sendRedirect()
		//resp.sendRedirect("./servlet1/testServlet.jsp");
						//폴더명/jsp파일명
		
		//주소는 서블릿 형태, 코드작성은 JSP파일에서 할 수 있도록 합치려면?
		//forward방식 페이지 (액션 태그 사용 forward는 불가능 ) 
		//(액션 태그는 JSP코드 -> JSP코드인 액션 태그를 자바로 바꿀 수 있음)
		
		//RequestDispatcher dis = req.getRequestDispatcher("./servlet1/testServlet.jsp?cnt="+cnt);
		//JSP페이지 이동 시 cnt변수 들고 이동
		
		//서블릿 영역객체에 변수 저장 후 JSP에 들고 이동 -> JSP에서는 영역객체 호출
		req.setAttribute("cnt", cnt);
		
		RequestDispatcher dis = req.getRequestDispatcher("./servlet1/testServlet.jsp");
		dis.forward(req, resp);
		//forward(request,response)
	}
		
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		System.out.println("POST방식 호출 발생! -doPost()실행");
	}

	@Override
	public void init() throws ServletException {
		//최초의 서블릿이 생성될 때만 실행됨
		System.out.println(" 서블릿 초기화 메서드 - 초기화 완료 ");
		
		//서블릿 생성될 때 cnt변수를 0으로 초기화
		cnt=0;
		System.out.println("카운트 0으로 초기화");
	}

	@Override
	public void destroy() {
		//서블릿 소멸 시 호출
		System.out.println(" 서블릿 소멸 ");
	}
	
	
	
	
	
}
