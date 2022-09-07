<%@page import="java.sql.Timestamp"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>insertPro.jsp</h1>
	<%!
		static final String Driver ="com.mysql.cj.jdbc.Driver";
		static final String DBURL ="jdbc:mysql://localhost:3306/jspdb";
		static final String DBID ="root";
		static final String DBPW ="1234";
	
	%>
	
	<%
		//데이터가 post방식으로 넘어오기에 한글깨질 수 있음 -> 한글 인코딩처리 
		request.setCharacterEncoding("UTF-8");
		//insertForm화면에서 사용자로부터 전달된 정보를 저장 
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		int age = Integer.parseInt(request.getParameter("age"));
		String gender = request.getParameter("gender");
		String email = request.getParameter("email");
		Timestamp regdate = new Timestamp(System.currentTimeMillis());
		
		//저장된 정보 확인
		System.out.println(id+pw+name+age+gender+email);
		
		//디비연결- 정보저장
		//1.드라이버 로드
		Class.forName(Driver);
		//2. 디비 연결
		Connection con = DriverManager.getConnection(DBURL, DBID, DBPW);
		//3.SQL(insert구문) &pstmt 생성
		String sql = "insert into itwill_member(id,pw,name,age,gender,email,regdate) values(?,?,?,?,?,?,?)";
		
		PreparedStatement pstmt = con.prepareStatement(sql);
		//4.? 채우기
		pstmt.setString(1,id);
		pstmt.setString(2,pw);
		pstmt.setString(3,name);
		pstmt.setInt(4, age);
		pstmt.setString(5,gender);
		pstmt.setString(6,email);
		pstmt.setTimestamp(7, regdate);
		
		//5.SQL실행 
		pstmt.executeUpdate();
		//회원가입 완료  -> 로그인 동작 수행하기 
		
		
		
	%>
</body>
</html>