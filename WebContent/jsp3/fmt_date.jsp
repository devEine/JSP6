<%@page import="java.util.Date"%>
<%@page import="javax.xml.crypto.Data"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>fmt_date.jsp</h1>
	
	<%=new Date() %><!-- java.util밑의 Data()사용 --><hr>
	
	<!-- core라이브러리 이용 오늘 날짜를 변수에 저장  -->
	<c:set var="today" value="<%=new Date() %>"></c:set>
	${today }<hr> <!-- EL표현식으로 출력 -->
	
	<!-- formatting라이브러리 이용 오늘 날짜 출력  -->
	<fmt:formatDate value="${today }" /><br>
	<!-- type미설정 시, 오늘 날짜만 ! 출력 -->
	<fmt:formatDate value="${today }" type="time"/><br>
	<!-- type="time" 오늘 시간만! 출력 -->
	<fmt:formatDate value="${today }" type="both"/><br>
	<!-- type="both" 날짜+시간 정보 출력 -->
	<hr>
	<fmt:formatDate value="${today }" dateStyle="full"/><br>
	<!-- dateStyle="full" 년월일 요일  -->
	<fmt:formatDate value="${today }" dateStyle="long"/><br>
	<!-- dateStyle="long" 년월일 (요일)   -->
	<fmt:formatDate value="${today }" dateStyle="medium"/><br>
	<!-- dateStyle="medium" 년월일   -->
	<fmt:formatDate value="${today }" dateStyle="short"/><br>
	<!-- dateStyle="short" 22 월일  -->
	<hr>
	<fmt:formatDate value="${today }" type="time" timeStyle="full"/><br>
	<fmt:formatDate value="${today }" type="time" timeStyle="long"/><br>
	<fmt:formatDate value="${today }" type="time" timeStyle="medium"/><br>
	<fmt:formatDate value="${today }" type="time" timeStyle="short"/><br>
	<hr>
	2022년 8월 23일 (화) 오후 4시 23분 00초 <br>
	형식으로 출력하라<br>
	<fmt:formatDate value="${today }" type="both" dateStyle="long" timeStyle="long"/>
	<hr>
	2022/8/23 (화) (오후)4:23:00 형태로 표현하라<br>
	<fmt:formatDate value="${today }" pattern="yy/MM/dd (E)"/>
	<!-- pattern으로 원하는 형태로 출력 가능 MM:달 , mm:분 , E:요일 -->
	<fmt:formatDate value="${today }" type="time" pattern="(a)hh:mm:ss"/>
	<!-- a:오후, ss:초   -->
</body>
</html>