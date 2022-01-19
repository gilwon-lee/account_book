<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session2 로그인 후의 페이지 작업</title>
</head>
<body>
	<h2>sessionP236-2.jsp문서</h2>
	<%
		//세션에 설정된 데이터 가져오기
		//session.getAttribute(속성명);
		//저장(설정)할 때 Object타입으로 value가 저장되므로
		//getAttribute(속성명) 리턴 타입은 Object이다.
		//따라서 강제로 형변환해서 작업을 주로 하게된다.
		//데이터타입 변수명=(강제형변환) session.getAttribute(속성명);
		//로그인 후의 페이지 작업
		//auto boxing : 기본클래스 -> 래퍼클래스로 형변환
		//auto unboxing :래퍼클래스-> 기본타입으로 자동 형변환 
		Object obj=(String)session.getAttribute("MNICK");
		Object mid=(String)session.getAttribute("MID");
		String smid=(String)session.getAttribute("MID");
		String strMnick=(String)session.getAttribute("MNICK");
		int intRade = (Integer)session.getAttribute("MGRAGE");
		
	%>
	<a href="sessionP236-2.jsp">다른페이지로 이동(JSTL이용 로그인 여부 판단)</a>
	<a href="sessionP244.jsp">다른페이지로 이동(JSTL이용 로그인 여부 판단)</a>
	<%--JSTL Core에서 if 문법 
	<c:if test="조건">
	조건만족시 실행코드
	</c:if> --%>
	*로그인 유저의 id :<%=session.getAttribute("MID") %><br/>
	<!-- 로그인 되었다면 -->
	<c:set var = "smid" scope = "session" value = "<%=mid %>"/>
	<c:if test="${not empty smid}">
	조건만족시 실행코드<br/>
	<%-- *로그인 유저의 id :<%= session.getAttribute("MID") %><br/> --%>
	*로그인 유저의 id :<c:out value="${mid}"/><br/>
	*로그인 유저의 이름 :<%=session.getAttribute("MNICK") %> <br/>
	*로그인 유저의 이름 :<%=obj %><br/>
	*로그인 유저의 이름 :<%=strMnick %><br/>
	*로그인 회원의 등급 :<%=session.getAttribute("MGRANGE") %><br/>
	*로그인 회원의 등급 :<%=intRade+5000 %><br/>
	</c:if>
	<a href="sessionLogoutPage.jsp">로그아웃</a>
	<!-- 로그인 전이라면 -->
	<a href="#">로그인 페이지로 이동</a>
</body>
</html>