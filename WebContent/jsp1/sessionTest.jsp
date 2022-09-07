<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>sessionTest.jsp</h1>
	<hr>
	
	<%
		//세션정보 가져오기(sessionSet에서 set한 데이터 확인)
		String name = (String)session.getAttribute("name");
		//Object타입을 String으로 강제형변환
		String sessionId = (String)session.getAttribute("sessionId");
		
		if(name == null){
			name = "세션값 없음";
		}
		if(sessionId ==null){
			sessionId ="세션값 없음";
		}
	%>
	
	<h2>클라이언트</h2>
	
		<h3>세션값: <%=name%></h3>
		<h3>세션값: <%=sessionId %></h3>
	<input type="button" value="세션 값 생성" onclick="location.href='sessionSet.jsp';"><br>
	<input type="button" value="세션 값 삭제" onclick="location.href='sessionDel.jsp';"><br>
	<input type="button" value="세션 값 초기화" onclick="location.href='sessionInv.jsp';"><br>
	  
</html>