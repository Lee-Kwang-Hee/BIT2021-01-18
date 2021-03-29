<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	// java 코드를 쓸수있는 공간
    	Date day = new Date();
    	/* 
    		JSP 페이지 : UI(html+css+javascript)+(JAVA 코드 <% 스크립트 릿 안에 구현)
    		>> 디자인 코드 + 서버 로직 코드 : 혼재된 방식
    		
    		servlet + jsp
    		>> java 웹 기반으로 기술(x) >> 계산기, 그림판, window프로그램 >> 웹(servlet)
    		>> java 페이지로 web 서비스 >> login.java >> 단점 >> 배우기 어렵다, 디자인 작업이 어렵다
    		
    		
    		JSP(UI) 장점 : html 기반으로 디자인 작업이 편하다, 쉽게 사용
    		        단점 : java 코드는 <% 사용, 혼재된 방식
    		        
    		>> 현대의 프로그래밍은 >> 둘 다 사용
    		>> servlet(java코드) + jsp(UI) 
    		>> MVC 패턴(Model View Controller)
    		           Model(DAO,DTO) >> 객체 만드는 순수한 java
    		           View(UI) >> JSP
    		           Controller >> java 코드 웹 제어(응답,요청) >> sevlet
    		>> JSP 와 html 차이점
    		>> Tomcat(WAS) 처리
    		>> 1. html : web sever(클라이언트 요청이 오면 응답): 192.168.0..../login.html
    		>> 2. jsp  : web을 통해서 컴파일 >> class로 생성 >> 실행(가지고 있는 코드: text,html,script) >> 전달
    	    >> WAS(JSP) > compile(a.jsp.java) > a.jsp.class > 실행 > 정적 + 동적 > 정적파일 > 전달
    		>> ASP(ASPX) , php,jsp 장점 : 코드 노출이 안된다 >> 보안상 좋다
    		
    		>> 컴파일 > 실행(a.jsp.class) >> 전달
    		>> 개발자 new.jsp 수정 > 코드 수정 인지 WAS > WAS 재컴파일 > 걱정ㄴㄴ
    		
    		JSP 구성요소
    		1. 선언부(<%@ page language="java")
    		 -> 사용 언어, 인코딩 방식, import
    		
    		2. 스크립트 요소
    		-> 스크립트 릿 <% java 코드
    		-> 표현식(출력방법) : 출력하는 대상(client 브라우져) :<%= 전달하고자 하는 내용, = 을 respons(응답으로 해석)
    		-> 선언부(공통자원(scope page)) : 공통함수 정의 >> <%! 공통함수
    		
    	*/
    %>
    <%!
    	// 이 페이지에서 사용하는 공통함수
    	public int add(int i, int j){
    	return i+j;
    }
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <h3>JSP</h3>
 <%= day %><br>
 <%= add(10,20) %><br>
 <%
 	int result = add(100,200);
 	
 %>
 <hr>
 합 결과 : <%= result %>
</body>
</html>