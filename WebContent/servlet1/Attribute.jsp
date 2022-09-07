<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Attribute.jsp</h1>
	
	<h2>TestServlet2 (서블릿)과 연결되어 있음</h2>
	<h2>TestServlet2 (서블릿)에서 정보공유 가능 : JAVA코드와 JSP코드 공유</h2>
	
	<%
		//변수 : 해당페이지 안에서만 사용 가능 
		int cnt = 100;
	
		//request영역에 저장된 정보 사용 
		int cnt2 = (int)request.getAttribute("cnt");
		//int로 형변환 해줘야 함 
		//cnt2번의 값 = 속성값
		
		int cnt3 =(int)session.getAttribute("cnt");
	%>
	
	cnt값 : <%=cnt %><br>
	
	cnt2값: <%=cnt2+2000 %><br><!--숫자데이터로 형변환 -> 연산가능  -->
	cnt2값(EL): ${requestScope.cnt+500 }<br><!-- .getAttribute("cnt")에서 가져 온 값 (숫자데이터) 연산가능 -->
	<!--cnt2값이지만 getAttribute에서 가져오므로 EL표현식 안에 cnt라고 표기해야 함  -->
	
      request영역의 cnt : ${requestScope.cnt }<br>
      session영역의 cnt : ${sessionScope.cnt }<br> 
      <!-- 속성값이 같으므로 어느 영역에 저장되어 있는 값인지 Scope범위를 명시해야 함  -->
</body>
</html>