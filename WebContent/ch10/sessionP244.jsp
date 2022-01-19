<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>sessionP244.jsp</h3>
	<%
/* 	  session.setAttribute("MID", "hid"); //회원id hid
	  session.setAttribute("MNICK", "의적홍길동");//회원별명 "의적홍길동"
	  session.setAttribute("MGRAGE", 1); */
	  //session에 설정된 값 가져오기
	  String mid =(String)session.getAttribute("MID");
	  // 삼항연산자 타입 변수명=(조건)?true일경우:false일경우;
	  boolean loginTF=(mid!=null)?true:false;
	%>
	<c:set var="login" scope="session" value="<%=loginTF %>"/>
	
	<% if(loginTF){
		out.println("접속중");
	}else{
		out.println("접속안함");
	}
	%>
</body>
</html>