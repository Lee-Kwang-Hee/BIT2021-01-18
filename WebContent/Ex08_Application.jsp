<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		/* 
			webproject 생성 >> 기본 폴더 구조 제공 >> web, xml(WebApp 환경설정)제공
			web.xml(환경설정 파일은 서버가 시작되면 가장 먼저 loading(해석되고 실행))
			<welcome-file>default.html</welcome-file> 웹 사이트 기본 페이지 설정
			
			
			<context-param>
			<description>개발자 마음대로</description>
			<param-name>email</param-name>
			<param-value>webmaster@bit.or.kr</param-value>
		    </context-param>
		    
		    Application 객체(WAS제공)
		    web.xml 설정 read
		 	
		*/
		
		/* 
			webcontent >> WEB-INF >> lib
			           >> WEB-INF >> web.xml
					   >> a.jsp
					   >> b.html
		
			WEB-INF 폴더는 보안폴더
			Client가 주소를 알고 있다 하더라도 접근 불가한 경로
			
			개발자 문제점
			Ex02_register.html -> 요청 -> 처리 -> Ex02_register.jsp
			클라이언트가 Ex02_register.jsp 페이지를 직접 접근 못하게
			Webcontent 폴더 안에 있는 자원은 Client가 모든 접근 할 수 있다
			
			실제 현업 개발 코드는 Webcontent 폴더에 없다
			1. Client가 직접 요청하는 파일: main.html, login.html, register.htm >> Webcontent
			2. Client가 직접 요청해서는 안되는 파일 : WEB-INF >> views >> member >> register.jsp
												WEB-INF >> views >> admin >> admin.jsp	
			
		
		*/
	%>
	<h3>Application</h3>
	<%
		String param = application.getInitParameter("email");
		out.print("<h3>" + param +"<h3>");
		out.print("<hr>");
		String param2 = application.getInitParameter("FilePath");
		out.print("<h3>" + param2 +"<h3>");
		
	%>
</body>
</html>