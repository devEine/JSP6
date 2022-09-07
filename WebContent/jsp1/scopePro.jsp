<%@page import="javax.swing.RepaintManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String id = request.getParameter("id");
	%>
	
	<h2>파라미터 정보</h2>
	아이디: <%=id %>
	
	<h2>영역객체의 속성(Attribute)</h2>
	
	[영역객체].setAttribute(키,값);
	:영역 객체에 속성을 저장(공유할 데이터를 저장)<br>
	
	[영역객체].getAttribute(키);
	:영역 객체의 속성을 사용(공유된 데이터의 값을 사용)
	  꺼낼 올 때는 키값만 있으면 됨<br>
	  
	  *키 값으로 속성 값 불러옴
	  <%=pageContext.getAttribute("name") %><br>
	  <!-- 불러오기만 하는 것 저장전에 부르기만 하면 null -->
	  :pageContext객체 안에 들어있는 name키의 속성을 가져오라 <br>
	  
	  *영역객체에 정보 저장
	  <%
	  	pageContext.setAttribute("pValue", "pageContext Value!");
	  	//pValue라는 이름으로 pageContext Value를 저장함
	  	request.setAttribute("rValue", "request Value!");
	  	session.setAttribute("sValue", "session Value!");
	  	application.setAttribute("aValue", "application Value!");
	  	%><br>
	  *영역객체의 정보 출력 <br>
	  page 영역의 공유데이터(Attribute)출력 : <%=pageContext.getAttribute("pValue") %><br>
	  request 영역의 공유데이터(Attribute)출력 : <%=request.getAttribute("rValue") %><br>
	  session 영역의 공유데이터(Attribute)출력 : <%=session.getAttribute("sValue") %><br>
	  application 영역의 공유데이터(Attribute)출력 : <%=application.getAttribute("aValue") %><br>
	  <hr>
	  
	  <h1>페이지 이동</h1>
	  <h3>1. a태그</h3>
	  <a href="scopeAction.jsp?id=<%=id %>&pw=1234">scopeAction.jsp 페이지로 이동</a><br>
		
	 <%--  <h3>2. javaScript 태그</h3>
	  <script type="text/javascript">
	  alert('js:scopeAction.jsp 페이지 이동');
	  location.href ="scopeAction.jsp?id=<%=id%>&pw=1234";
	  </script> --%>
	  
	  <h3>JSP</h3>
	  <%
	  	//response.sendRedirect("scopeAction.jsp?id="+id+"&pw=1234");
	  	
	  %>
	  
	  <h3>액션태그</h3>
	  <jsp:forward page="scopeAction.jsp">
	  
	  
	  </jsp:forward>
</body>
</html>