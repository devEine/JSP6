<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>core_foreach.jsp</h1>
	<%
		//JSP코드로 1~10출력
		for(int i=1; i<=10; i++){
			%>
				<%=i %><br>
			<%
		}
	%>
	
	<hr>
	<!-- JSTL와 EL표현식을 이용하여 1~10까지 출력 -->
	<c:forEach var="i" begin="1" end="10" step="1"> 
	<!-- begin 시작, end 끝, step 얼마씩 증가할 것이냐 -->
		${i}<br> <!-- EL표현식에 담아 출력 -->
	</c:forEach>
	
	<hr>
	
	<!-- 1~10까지 홀수만 출력 -->
	<c:forEach var="i" begin="1" end="10" step="1">
		<c:if test="${i%2 !=0 }">
			${i }<br>
		</c:if>
	</c:forEach>
	<hr>
	<!-- 1~10까지 중 짝수만 출력 -->
	<c:forEach var="i" begin="1" end="10" step="1">
		<c:if test="${i%2==0 }">
			${i }<br>
		</c:if>
	</c:forEach>
	<hr>
	<%
		/* 배열 선언  JSP 코드 */
		String[] arr = {"abc", "ass", "zxc", "dfn", "iuop", "rne"};
	
		for(int i=0; i<arr.length; i++){
			out.println(arr[i]);
		}
		/* 배열의 정보를 키값에 담음  */
		/* 1. JSTL로 배열 사용 위해서는 배열이 영역에 저장되어있어야 함 */
		pageContext.setAttribute("arr", arr);
	%>
	<hr>
	<!-- 배열의 주소값 출력 -->
		${arr }<br>
		<!-- 해당 인덱스의 배열 값 출력    -->
		${arr[0] }
	<hr>
	<!-- 2.JSTL foreach문으로 배열의 값 출력하기  -->
	<!-- 영역에 저장되어있는 배열을 불러와야 함  -->
	<!-- c:foreach items="배열,반복값 적는 곳"  -->
	<c:forEach var="arr" items="${arr}">
		${ arr}
	</c:forEach>
	<hr>
	
	<!-- a.b.c.d.e.f.g.hh.ii.jj.kk 이렇게 들어온 데이터를 잘라서 사용하고 싶음-->
	<c:forTokens var="tk" items="a.b.c.d.e.f g.hh.ii.jj.kk" delims=" ">
	<!-- c:forTokens items="배열,반복값 적는 곳" delims="구분자"(뭘로 구문해서 자를건지) -->
		${tk } <!--var로 변수이름 지정 후 EL표현식으로 불러옴  -->
	</c:forTokens>
	
</body>
</html>