<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html> <!--html5로 바꾸려면 html뒤의 정보 모두 삭제하면 됨  -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>testPro.jsp</h1>
	<%
		//주소에 전달되는 정보 => 파라미터 ex:num=1800
		int num =Integer.parseInt(request.getParameter("num"));
		//parseInt: static메서드, 문자열을 숫자로 잘라준다(바꿔준다)메서드 
		//form1 페이지가 testPro 정보를 요청하는 것 
		
		//request.getParameter("num");
	    /* 단순 호출  */
	
	%>
	<%=num+100 %><br>
	<!-- 문자열과 숫자 구분하기 위해 더하기 연산해본다  -->
	<%=request.getParameter("num")+100%><br>
	<!-- 출력하려면 서브틀릿안에 넣어야  -->
	<!-- 숫자 연산이 됐으니 숫자라고 증명 가능  -->

</body>
</html>