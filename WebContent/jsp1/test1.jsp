<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>test1.jsp</h1>
	
	<!-- 안녕하세요! -->
	
	<%
	 //안녕하세요 ? 
	%>
	<hr>
	<%
	//스크립틀릿: 자바 코드 작성 영역 
	//int a=100; 지역변수 
	
	//문자열 배열 생성 -> 데이터 입력  출력 
	String[] arr = new String[3];
	arr[0] = "a";
	arr[1] = "b";
	arr[2] = "c";
	
	for(int i = 0; i<arr.length; i++){
		System.out.println(arr[i]);
	}
	for(int i = 0; i<arr.length; i++){
		out.println("<h3>"+arr[i]+"<br>"+"<h3>");
	}
	
	for(int i=0; i<arr.length; i++){
	%>

		<%=arr[i] %><br>
		
	<%
	}
	%>
	
	<%-- JSP주석 --%>
	<%-- <% 1234 %> --%>
	
	<script type="text/javascript">
	//javaScript주석 
	</script>
	
	
</body>
</html>