<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
     	// 1. 한글처리
     	request.setCharacterEncoding("UTF-8");
     	// 2. 데이터 받기(request)
     	String id = request.getParameter("id");
     	
     	//request 객체는 WAS가 가지고 있는 내장 객체
     	//192.168.0.123:8080/....... 요청 하나당 객체 1개
     	// 1. 요청 페이지당 한개가 자동 생성(request)
     	// 2. 클라이언트가 서버에 전송을 요청하면 클라이언트에 수 많은 정보가 전달 하는데 이 정보를 받는 객체가 request
     	// 입력값, IP, 브라우져 정보, 전송방식...등
     	// request 내장 객체는 클라이언트에서 서버로 요청할때 생성되는
     	
     	// HttpServletRequest 타입을 갖는 객체가 자동 생성되고 그 주소를 request 참조
     	// HttpServletRequest request = new HttpServletRequest
     	
     	// 3. 로직처리(업무 DB 연결 등)
     	
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	id : <%=id %><hr>
	접속한 클라이언트 IP:<%=request.getRemoteAddr() %><hr>
	서버에 요청한 인코딩 방식: <%=request.getCharacterEncoding() %><hr>
	전송방식 :<%=request.getMethod() %><hr>
	포트 : <%=request.getServerPort() %><hr> 
	context root(사이트명, 가상디렉토리, 홈디렉토리,default웹경로) : <%=request.getContextPath() %><hr>
</body>
</html>