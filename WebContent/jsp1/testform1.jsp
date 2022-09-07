<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>testForm1.jsp</h1>
	
	<h2>정보 전달 - form태그</h2>
	<form action="testPro.jsp" method="get"> 
	<!-- jsp페이지만 만들 수 있음  --> 
		좋아하는 숫자 입력 : <input type="number" name="num"> <!-- 폼태그 안에다 인풋태그 만들기  -->
		<!-- 인풋태그 사용해서 정보를 전달하겠다   -->
		
		<input type="submit" value="전송하기">
		<!--  인풋 텍스트 박스에 숫자 입력 후 전송하기 버튼 누르면 주소에 정보 보내짐 -->
	</form>
</body>
</html>