<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>sessionSet.jsp</h1>
	
	<h3>서버</h3>
	<%
		//세션 값 생성
		session.setAttribute("name", "ITWILL");
		session.setAttribute("sessionId", "Busan");
	
		System.out.println("세션값 생성완료!");
	%>
	
	<script type="text/javascript">
		alert("요청 정보 처리완료");
		alert("세션값 생성완료!");
		
		location.href ="sessionTest.jsp"; //js이용해서 세션 테스트로 돌아가는 문장
	</script>
</body>
</html>