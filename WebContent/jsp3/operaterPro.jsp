<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>operaterPro.jsp</h1>
	<%	
		//숫자데이터지만 파라미터 형태로 전달되면 -> String데이터 타입으로 전달됨 
		//Interget.parseInt()로 숫자데이터로 바꿔줘야 함 
		int num1 = Integer.parseInt(request.getParameter("num1"));
		int num2 = Integer.parseInt(request.getParameter("num2"));
	%>
	
	<!-- 1.JSP 스클립틀릿으로 출력 -->
	합계: <%=num1%> + <%=num2%> = <%=num1+num2 %><br>
	
	<!-- 2.EL표현식으로 출력 -->
	<!--EL표현식 사용 시 전달받은 파라미터의 데이터(String)가 자동으로 형 변환 됨(int) -->
	합계: ${param.num1} + ${param.num2} = ${param.num1+param.num2}<br>
	<hr>
	
	<h3>num1,num2의 데이터는 모두 양수입니까?</h3>
	<!--1.숫자 각각 양수여부 확인  -->
		${param.num1>0 },${param.num2>0 }<br>
	<!-- 2.숫자 두 개 함께 양수여부 확인(논리연산자 사용) -->
		${(param.num1>0) && (param.num2>0) }<br>
	
	<h3>num1,num2의 데이터는 모두 양수입니까?('모두 양수','아니다')</h3>	
	<!-- 만약 양수면 "양수" 아니면 "아니다"라고 출력되도록 (삼항연산자 사용) -->
	<!-- 괄호에 유념! 조건식 부분은 ()로 같이 묶고 삼항연산자 전체를 ${}으로 묶음 -->
		${ ((param.num1>0) && (param.num2>0)) ? '모두 양수' : '아니다' }
	<hr>
	
	<h3>EL표현식 비교 연산자</h3>
		<!-- >,< 등이 태그와 유사하기 때문에 사용 지양 권고  -->
<!-- 	== eq <br>
		!= be <br>
		< lt(less than) <br>
		> gt(grate than) <br>
		<= le(less equal) <br>
		>= ge(grate equal) <br>
		 -->
		${ ((param.num1 gt 0) && (param.num2 gt 0)) ? '모두 양수' : '아니다' }
		

</body>
</html>