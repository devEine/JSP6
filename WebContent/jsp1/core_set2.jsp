<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- JSTL태그 사용 위해 필수!!  -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>core_set2.jsp</h1>
	
	<%
		//core_set.jsp에서 전달된 정보 저장
		String name = (String)request.getAttribute("name");
		int price = Integer.parseInt((String) request.getAttribute("price"));
		String color = (String)request.getAttribute("color");
		
		/* 세션 영역 데이터 사용하기 */
		String test = (String)session.getAttribute("test");
	%>

		이름: <%=name %><br>
		가격: <%=price %><br>
		색상: <%=color %><br>
		
		테스트: <%=test %><br>
		<hr>
		
		<!-- EL표현식으로 나타내기 -->
		<h2>EL표현식</h2>
		<!-- (영역객체.)변수명 호출  => (영역객체.)생략가능 -->
		<!-- 영역객체가 없을 경우, 모든 영역을 찾아서 값을 가져옴 -->
		<!-- 영역 찾는 순서 1.page < 2.request < 3.session < 4.application -->
		<!-- 동일한 이름의 속성이 존재하는 경우, 가장 먼저 만나는 데이터를 사용하고 
			 이후의 데이터는 접근 불가능하다. (접근하려면 영역을 명시해야 함) -->
		
		이름: ${requestScope.name }<br>
		<!-- requestScope.를 생략하더라도 값 출력됨 -->
		<!-- requestScope가 생략되어 있음 -->
		이름: ${name }<br>
		가격: ${price }<br>
		색상: ${color}<br>
		
		테스트: ${test }<br> 
		<!-- 특정 영역에 있는 데이터 삭제 -->
		<c:remove var="test" scope="session"/>
		테스트: ${sessionScope.test }<br>

</body>
</html>