<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Arrays.jsp</h1>
	JSP: <%=request.getAttribute("number") %><br>
	el: ${requestScope.number }<br>
	<hr>
	
	오늘의 추천메뉴: ${menu[0] }, ${menu[1] },${menu[2] },....<br>
	<!--배열의 인덱스값 넣어서 일일이 불러와야함  -->
	
	<!-- JSP반복문으로 배열 출력  -->
	<%
		String[] menuArr = (String[]) request.getAttribute("menu");
	
		if(menuArr != null){
			for(int i=0; i<menuArr.length;i++){
				out.print("메뉴: "+menuArr[i]);
				%>
				<%=menuArr[i] %><br>
				<% 
			}
		}
	%>
	<hr>
	<!-- JSTL이용하여  foreach문 사용 -->
	<c:forEach var="m" items="${menu }" >
		<h3>${m }</h3>
	</c:forEach>
	<hr>
	
		<h3>${movies }</h3>
		<!-- ArrayList로 작성한 배열은 인덱스 지정하지 않아도 전체 배열이 출력됨 -->
	<hr>
	
	<!-- foreach사용하여 ArrayList배열 출력 -->
	<c:forEach var="ms" items="${movies }">
		<h3>${ms }</h3><br>
	</c:forEach>
	
</body>
</html> 