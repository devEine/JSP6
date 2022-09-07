<%@page import="com.itwillbs.servlet.MyServlet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>testServlet.jsp</h1>
	<!-- 서블릿의 영역객체 호출 JSP코드 -->
	속성: <%=request.getParameter("cnt") %>
	영역객체: <%=request.getAttribute("cnt") %>
	
	<!-- 서블릿의 영역객체 호출 EL표현식 -->
	속성: ${cnt }
	속성: ${requestScope.cnt }
</body>
</html>