
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 
	 정보(데이터) > 저장 > 장소(where)
	 
	 클라이언트(개인 로컬 PC) : 서버(웹 서버, DB서버) 
	 
	 정보(데이터, 자료) >> 어디에 저장(보관)
	 고민(기준점) : 보안 요소(정보의 중요성) , 소멸(일시적, 영속적)
	 
	 Client(Local PC : 웹 브라우져)
	 1. Cookie(메모리 쿠키, 파일 쿠키(local 디스크(txt) 파일로 : 내용(암호화)) > 소멸시기 
	    단점 : 크기 제한적, 사용 불편
	 2. Local storage(key, value) 형태로 저장
	 
	 Server(웹 서버 : WAS)
	 1. server memory : session객체(사이트 접속하는 사용자마다 부여하는 고유한 식별값) >> 서버가 리부팅, 서버 정지 >> 데이터 소멸
	 2. server memory : Application객체(사이트 접속하는 모든 사용자가 공유하는 객체) >> 서버가 리부팅, 서버 정지 >> 데이터 소멸
	 3. sever 영속적(서버가 리부팅되거나 정지 되어도 남아있는 데이터) :file.txt >>관리가 힘들다
	 4. DB server : 보안, 영속관리 가능 >> 비용 추가
	 
	 
 -->
 <%
 	// 쿠키 객체 생성
 	Cookie mycookie = new Cookie("cname","1004");
 
 	// 내 사이트에 접속한 브라우져(client)에게 전달 >>response
 	response.addCookie(mycookie);
 
 
 
 %>
 <a href = "Ex17_Cookie_Read.jsp">Cookie read</a>
</body>
</html>