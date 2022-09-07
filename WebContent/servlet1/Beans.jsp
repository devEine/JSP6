<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Beans.jsp</h1>
	
	<h2>전달된 사람의 정보 출력</h2>
	${requestScope.kim }<br> <!--객체 -->
	<br>
	<!-- 원래 get메서드 이용하여 kim.getName로 불러야하지만 
		 EL표현식에서는 변수에 바로 접근 가능  -->
	이름: ${requestScope.kim.name }<br> <!-- .kim.name (소문자) -->
	나이: ${requestScope.kim.age }<br>
	휴대폰: ${requesrScope.kim.phone }<br>
	<hr>
	<!-- 코드가 길어짐-->
	모델명: ${kim.phone.model }<br>
	색상: ${kim.phone.color }<br>
	가격: ${kim.phone.price }<br>
	<hr>
	<!-- JSTL 코어 코드 추가 -->
	<!-- JSTL 사용하여 객체정보 저장 -> 변수 변경  -->
	<c:set var="p" value="${kim.phone }"/><!-- kim.phone코드를 p변수에 담는다 -->
	
		<!-- p = kim.phone();  -->
		${p.model }<br>
		${p.color }<br>
		${p.price }<br>
</body>
</html>