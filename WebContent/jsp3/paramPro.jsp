<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>paramPro.jsp</h1>
	
	<h2>전달된 정보 출력 </h2>
	<%
		//한글처리
		request.setCharacterEncoding("UTF-8");
	
		//화면에 입력받은 아이디값 저장
		String id = request.getParameter("id");
		/* 1.스클립틀릿내에서 out.print로 출력하는 방법  */
		out.print("아이디:"+id+"<br>");
		
		//String foods1 = request.getParameter("foods1");
		//String foods2 = request.getParameter("foods2");
		//id가 같은 여러 값 배열에 담아 가져오기    
		String[] foods = request.getParameterValues("foods");
		
	%>
	
	
	
	<!--2.화면에 스크립틀릿으로 출력하는 방법 -->
	아이디:<%=id %><br>
	<!--3.화면에 EL표현식으로 출력하는 방법 -->
	<!-- request.getParameter("id")로 저장하지 않아도 됨  ${param.id}만으로 출력 가능-->
	<!-- 코드가 간결해지며 작업효율성 좋아짐 -->
	<!-- ${id} (X) :jsp변수는 EL표현식으로 출력 불가능 -->
	아이디:${param.id} <br>
	
	<!--1.JSP스클립틀릿으로 출력하기 -> request.getParameter("foods")필요 -->
	내가 좋아하는 음식1:<%=foods[0] %><br>
	내가 좋아하는 음식2:<%=foods[1] %><br>
	<!--2.EL표현식으로 출력하기 -> request.getParameter("foods")필요없음  -->
	내가 좋아하는 음식1:${paramValues.foods[0]}<br>
	내가 좋아하는 음식2:${paramValues.foods[1]}<br>
	<!-- EL표현식은 null값을 공백으로 출력함 -->
	<!-- EL표현식 없는 데이터 (null값) 공백으로 표현  -->
	<!-- null값이어도 500에러가 나지 않음 -> 프로그램의 안정성을 높임  -->
	내가 좋아하는 음식3:${paramValues.foods[2]}<br>
	
	<!-- 1.JSP 스크립틀릿 이용한 코드 -->
	<% 
		String[] hobbys = request.getParameterValues("hobby");
		
		if(hobbys != null){
			for(int i=0; i<hobbys.length; i++){
				%>
				취미: <%=hobbys[i] %><br>
				<%
			}
		}
	%>
	
	<!-- 2.EL표현식을 이용한 출력 코드 -->
	<!--EL표현식은 반복문 사용이 불가능하다 -> JSTL과 결합 시에는 반복문 사용 가능-->
	hobby :${paramValues.hobby[0] }<br>
	hobby :${paramValues.hobby[1] }<br>
	hobby :${paramValues.hobby[2] }<br>
</body>
</html>