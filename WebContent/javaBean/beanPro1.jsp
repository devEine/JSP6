<%@page import="com.itwillbs.test.JavaBean1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>beanPro1.jsp</h1>
	
	<h2>Jsp만 이용하여 처리</h2>
	<%
		String id =request.getParameter("id");
		
	%>
	
	<%= id %><br>
	
	<h2>JavaBean1 객체를 사용하여 처리 </h2>
	<%
		JavaBean1 jb = new JavaBean1();
		jb.setId(id);
		//=jb.setId(request.getParamerter("id"));
		//위에서 jsp코드에서 id변수에 파라미터 값 담았기에 가능
		
		jb.setName(request.getParameter("name"));
		jb.setAddress(request.getParameter("address"));
	%>
	
	아이디: <%= jb.getId()%>
	이름: <%= jb.getName() %>
	주소: <%= jb.getAddress() %>
	
	<hr>
	<h2>액션태그를 사용한 JavaBean1 객체 사용 </h2>
	<!-- <jsp: XXXX> => 액션태크 -->
	
	<jsp:useBean id="jb2" class="com.itwillbs.test.JavaBean1"/>
	<!-- =JavaBean1 jb = new JavaBean1(); -->
	<!-- 액션태그는 객체생성과 같다  -->
	<!-- class는 id라는 요소가 어느 위치에 있는지 보여주는 것 -->
	
	<!-- 전달된 파라미터를 저장   -->
<%-- 	<jsp:setProperty property="id" name=jb2" param="id"/>
	<jsp:setProperty property="name" name=jb2" param="name"/>
	<jsp:setProperty property="address" name=jb2" param="address"/> --%>
	<!-- property="id" 라고하면 id의 파라미터 값을 받아옴 -->
	<!-- <jsp:setProperty property="id" name=jb2" param="id"/>와 같음  -->	
	
	<!--전달되는 모든 파라미터의 값을 해당 프로퍼티에 저장(개수,종류 상관 없음) -->
	<jsp:setProperty property="*" name="jb2"/>
	
	
	
	<!-- 저장된 파라미터 값 불러옴  -->
	아이디: <jsp:getProperty property="id" name="jb2"/>
	이름: <jsp:getProperty property="name" name="jb2"/>
	주소: <jsp:getProperty property="address" name="jb2"/>
	
	<h2>객체 생성</h2>
</body>
</html>