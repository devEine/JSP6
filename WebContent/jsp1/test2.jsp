<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	
	
</head>
<body>
	<hr>서버 도메인명: <%=request.getServerName() %>
	<!-- request객체 사용해서 getServerName 메서드 사용 , 서버네임(도메인)가져옴  -->
	<!-- localhost: 127.0.0.1 컴퓨터에 내장되어있는 램카드 아이피주소 ?? -->
	<!-- 내 컴퓨터에 할당된 IP주소로도 주소창 localhost대체 가능 -->
	서버 포트번호: <%=request.getServerPort() %><br>
	URL: <%=request.getRequestURL() %><br>
	
	URI: <%=request.getRequestURI() %><br>
	<!-- URI: 도메인명 없음, 포트번호 없음, 프로토콜(http)없음 -->
	 
	<hr>
	<%
		//response.setHeader(arg0,arg1);
		//response.addCookie(arg0);
		//response.setContentType(arg0);
		//response.sendRedirect(페이지주소); 페이지 이동
		//response.addHeader("Refresh","3"); //3초에 한 번씩 새로고침해라
		//response.addHeader("Refresh","3; url=https://www.naver.com");
		//3초 지나면 네이버 페이지로 이동		
	%>
	
	세션 객체: <%=session.getId() %><br>
	세션 생성시간: <%=session.getCreationTime() %><br>
	<!-- 세션이 생성된 시간 정보 알려줌 (1000분의 1초 ms로 표기) -->
	세션 최종접속시간: <%=session.getLastAccessedTime() %><br>
	<!-- 세션의 최종 접속시간 (ms표기) 세션생선시간 - 최종접속시간 = 경과시간(세션 헤더로 리프레시 가능) -->
	세션 유지시간(1800초,30분): <%=session.getMaxInactiveInterval() %><br>
	<!-- 초로 표기됨 ex:1800초(30분), 서버가 생성되고 30분만  사용가능  -->
	<!-- 불러오는건 get, 설정하는건 set -->
	<%
	session.setMaxInactiveInterval(3600); /* 세션유지시간 재설정 */
	%>
	세선 유지시간(3600초,1시간): <%=session.getMaxInactiveInterval() %><br>
	
</body>
</html>