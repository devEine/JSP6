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
	<h1>core_if.jsp</h1>
	<!--속성값 생성  -->
	<c:set var="name" value="ITWILL"></c:set>
	
	<!-- 속성값 출력 -->
	${name }<hr>
	
	<!-- if문을 사용해볼 것인데, 원래 html에는 자바 코드를 작성할 수 없음
	그래서 스크립틀릿 이용하여 JSP 코드 작성하거나 .. 하는데 EL표현식을 사용해보자  -->
	<!-- EL표현식 안에는 자바 코드 먹힘 -->
	<!-- test속성값은 EL표현식을 사용하여 값을 비교함  -->
	<c:if test="${10 lt 20 }"> <!-- EL표현식 안에 수식을 적어줘야 함(if조건문 참일 시 실행)  -->
		20값이 더 크다.
	
	</c:if>
	
	<br>
	
	<!-- name vlaue값이 itwill일 경우 "itwill님 안녕하세요" 출력 -->
	<c:if test="${name eq 'ITWILL' }">
		"itwill님 안녕하세요."
	</c:if>
	
	<!-- JSTL에서는 else 구문은 따로 없으나 
	choose라는 유사한 구문이 있음 -->
	<!--  choose : 한번에 여러개의 구문을 비교할 수 있음 
		 switch-case문과 형태는 유사함 -->
	<c:choose>
		<!-- when : case구문 -->
		<c:when test="${10 gt 20 }">
		<!-- when:하나의 조건, 조건이 참일 때 실행함  -->
			10이 더 크다 <br>
		</c:when>
		
		<c:when test="${10 lt 20 }">
			20이 더 크다<br>
		</c:when>
			
		<!--otherwise : default구문 (else) -->	
		<c:otherwise>
			<c:if test="${10 != 20}">
				다른 값!!
			</c:if>
		</c:otherwise>
	</c:choose>

</body>
</html>