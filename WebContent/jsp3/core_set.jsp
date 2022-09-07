<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <!-- JSTL문법을 사용하기 위해서 반드시 추가해야함  -->
    <!-- prefix: JSTL 태그의 접두사 정한는 것 ->c이외의 다른 문자로 바꿀 수 있으나 지양해야 함  -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>core_set.jsp</h1>
	<!--JSTL 출력문 -->
	<!-- 닫는 태그 두 가지로 표현 가능 -->
	<c:out value="안녕클레오파트라"></c:out><br>
	<c:out value="안녕클레오파트라"/>
	<hr>
	<%
		int num1 = 10;
		int num2 = 20;
	%>
	<!-- JSP  -->
	합계: <%=num1+num2 %><br>
	<!-- EL표현식  -> 파라미터로 전달 받은 값 아니라서 출력되지 않음-->
	합계: ${num1+num2 }<br>	
	<!-- JSTL -->
	합계: <c:out value="num1+num2"/><br> <!-- num1+num2로 출력됨 -->
	합계: <c:out value="<%=num1+num2 %>"/><br><%-- 30 --%>
	합계: <c:out value="${num1+num2}"/><br><%-- 출력되지 않음  --%>
	합계: <c:out value="${10+20}"/><br><%-- 숫자 직접 대입하여 EL표현식 사용  --%>
	<hr>
	
	<!-- itwill객체의 메서드를 부르는 것인데 itwill객체 없음 -> null값 -->
	<!-- default값 설정하여 null값일 때 내가 지정한 기본값으로 대체가능 -->
	<!-- 그냥 null값일 땐 공백으로 보임 -->
	<!-- @@는 공백 확인하기 위해 적은 것임, 특별한 의미 없음  -->
	@@<c:out value="${itwill.name }"/>@@<br> 
	@@<c:out value="${itwill.name }" default="Null값 대신 사용"/>@@<br>
	<hr>
	
	<!-- <%--<abc>--%>태그는 출력할 때 사라짐 -> 출력할 수 있는 방법 없을까?  -->
	<abc>태그는 abc입니다.<br>
<!-- 	1.부등호를 &EL표현식 연산자;로 하나만 바꿔주면 출력화면에 <%--<abc>--%>출력 가능 -->
	&lt;abc>태그는 abc입니다.<br>
	<!-- 2.JSTL태그 안 value값에 <%--<abc>--%>태그 사용 시 문자로 취급하여 출력 가능  -->
	<c:out value="<abc>태그는 abc입니다."/><br>
	<hr>
	
	<h2>JSTL의 변수</h2>
	<%
		int a =100;
		int b =200;
		int sum = a+b;
	%>
	<!-- JSP -->
	a+b = <%=sum %><br>
	
	<!-- JSTL  -->
	<!-- <%--<c:set />--%> 변수 선언 태그  -->
    <!-- <c:set var="변수명" value="변수값"/> -->
    <!-- JSTL변수는 EL표현식으로만 사용 가능  -->
    <!-- 영역객체에 정보 저장  -->
    
    <!-- JSP -->
    <%
    	pageContext.setAttribute("c", 1000);
    	pageContext.setAttribute("d", 2000);
    %>
    
    <!-- JSTL -->
	<c:set var="c" value="1000"/>
	<c:set var="d" value="2000"/>
	
	<%-- <c:set var="sum2" value="c+d"/> --%><!-- c+d로 출력됨 (문자로 인식) -->
	<c:set var="sum2" value="${c+d }"/><%--EL표현식과 함께 사용해야 함 --%>
	
	<!-- <%-- <%=sum2%> JSP표현식 사용 불가능--%> -->
	${sum2 }<!-- EL 표현식 사용 가능  -->
	<hr>
	 
	 <!-- 선언한 변수 name을 다른 페이지인 core_set2.jsp에서 사용할 수 있을까? -->
	<c:set var="name" value="phone" scope="request"></c:set>
	${name }<br>
	
	<%
		/* 세션 영역 변수 선언 */
		session.setAttribute("test", "itwill");
	%>
	
	<c:set var="price" value="10000" scope="request"/>
	${price }<br>
	<c:set var="color" value="black" scope="request"/>
	${color }<br>
	
	<!-- 페이지 이동 + request영역 값 -->
	<!-- core_set.jsp를 실행하면 core_set2로 바로 이동됨 -->
	<jsp:forward page="core_set2.jsp"/>
	
</body>
</html>