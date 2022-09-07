<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>fmt_number.jsp</h1>
	
	<h2>숫자데이터를 원하는 형태로 출력하는 Formatting 라이브러리 </h2>
	
	<h3>HTML</h3>
   <%
       pageContext.setAttribute("money", 1000000000);
    %>
	1000000<br> <!-- 숫자 데이터를 직관적으로 볼 수 없음  -->
	10,000,000<br> <!-- 임의로 콤마 찍으면 불편함 -->
	<hr>
	
	<!-- 이런것을 쉽게 만들어주는 것이 Formatting라이브러리 -->
	<fmt:formatNumber value="100000000"></fmt:formatNumber><br>
	<!-- 자동으로 콤마로 구분해서 출력됨 -->
	<hr>
	월급: ${money }원<br> <!--EL표현식으로 출력 -->
	월급: <fmt:formatNumber value="${money }"></fmt:formatNumber>원 <br>
	<hr>
	
	<h3>소수점 표현</h3>
	3.12334456 // 소수점 두 번째 자리까지만 표기 <br>
	표기 : <fmt:formatNumber value="3.12334456" pattern="#.######"></fmt:formatNumber><br>
	<!-- fmt:formatNumber pattern="자릿수 조정" -->
	<!-- #은 데이터가 존재하는 경우 표현 간, 없을 경우 공백 -->
	
	10.5 // 10.50이라는 형태로 출력<br>
	표기: <fmt:formatNumber value="10.5" pattern="##.00" ></fmt:formatNumber>
	<!-- 0은 데이터가 있으면 원래 데이터 출력, 없으면 0으로 표시 -->
	<!-- pattern의 #은 데이터가 있는 자릿수만 표기 가능(없는 자릿수는 표기 안됨)
		 데이터가 없는 자릿수를 채우고 싶으면 '0'을 넣어야 함  -->
		 
	0.5 => 50%<br>
	<fmt:formatNumber value="0.5" type="percent"></fmt:formatNumber><br>
	<!-- type="percent"로 적으면 value값 %로 변경되어 출력  -->
	
	월급: <fmt:formatNumber value="${money }" type="currency"></fmt:formatNumber>원 <br>
	<!-- type="currency" 통화단위로 표현해줌  -->
	월급: <fmt:formatNumber value="${money }" type="currency" currencySymbol="$"></fmt:formatNumber>원 <br>
	<!-- currencySymbol=" " 통화단위 심볼 바꾸어줄 수 있음  -->
</body>
</html>