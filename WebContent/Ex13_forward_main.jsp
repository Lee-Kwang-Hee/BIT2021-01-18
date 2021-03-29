<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	/* 
    		요청에 대한 흐름 제어
    		
    		1. include
    		2. forward
    		
    		공통점 = request 객체를 공유한다
    		차이점 = 제어권 : include(제어권을 가지고 있다)
    					 : forward(제어권을 넘겨준다)
    					 POINT( 요청 주소는 동일한데 다른 page의 내용을 서비스)
    					 
    					 //http://localhost:8090/WebJSP/Ex13_forward_main.jsp?code=B
    					 //http://localhost:8090/WebJSP/Ex13_forward_main.jsp?code=C
    					 클라이언트가 요청한 page >> Ex13_forward_main.jsp
    					 실제로 클라이언트가 받는 page 정보는 >> A.jsp  B.jsp  C.jsp
    					 
    					 원리 : buffer의 주인은 Ex13_forward_main.jsp >>forward를 만나면 >> buffer를 비운다
    					                  >> 비워진 buffer에 A.jsp  B.jsp  C.jsp를 담아서 서비스
    	*/
    	
    	String code = request.getParameter("code");
    	String viewurl = null;
    	
    	if(code.equals("A")){
    		viewurl="/forward/A.jsp";
    	}else if(code.equals("B")){
    		viewurl="/forward/B.jsp";
    	}else if(code.equals("C")){
    		viewurl="/forward/C.jsp";
    	}
    	
    %>
  	<jsp:forward page="<%= viewurl %>"></jsp:forward>
  	<!-- 아래의 코드는 의미가 없다(디자인 의미가 없다)  -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <h3> forward main 페이지</h3>
</body>
</html>