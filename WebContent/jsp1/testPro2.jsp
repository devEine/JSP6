<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>testPro2.jsp</h2>
	<%
		request.setCharacterEncoding("UTF-8");
		//이름 저장
		String name =request.getParameter("name"); //받은 정보를 name변수에 저장
		//나이 저장
		int age = Integer.parseInt(request.getParameter("age"));
	%>
	
	이름 : <%=name %>, 나이 : <%=age %><br>
	<!-- 20살 이상 "성인입니다"메세지 , 20살 미만 "미성년자입니다"메세지  -->
	<% if(age >= 20){
		out.println("성인입니다.");
	}else{
		out.println("미성년자입니다.");
	}
	
	%><br>
	
	<%
		String gender = request.getParameter("gender");
		//Stringhobby = request.getParameter("hobby");
		String[] hobbys = request.getParameterValues("hobby");
		String room = request.getParameter("room");
	%>

	성별:<%=gender %><br>
	
	<%
	if(hobbys != null){
		for(int i=0; i<hobbys.length;i++){
		//for(String hy: hobbys){
			%>
			
			취미: <%=hobbys[i] %><br>
			
			<%
		}
	}
	
	%>
	
	강의장:<%=room %><br>
</body>
</html>