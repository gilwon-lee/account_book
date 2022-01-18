<%-- JSP 주석문 --%>
<%-- <%@ 디렉티브(P52~) JSP페이지에 대한 설정정보 지정 --%>
<%@ page import="java.util.Date,java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% String hello="안녕하세요";
	//Date클래스를 이용해서 현재날짜시간정보
	Date today = new Date();
	//Calendar 클래스를 이용해서 현재 날짜 불러오기
	%>
	*out객체를 사용하여 브라우저에 출력 :<%
	out.println(hello);
	out.println(today);
	Calendar cal = Calendar.getInstance();
	%> <br/>
	<b>표현식 사용하여 브라우저에 출력<%= hello %></b><br/>
	<b>안녕</b>하세요.
	<p>*현재시간 :</p>
	<p>*자바의 Date 클래스 현재시간:<%=today %></p>
	<p>*자바의 Calendar 클래스 현재시간:
	<%=cal.get(Calendar.YEAR)%>년
	<%=cal.get(Calendar.MONTH)+1%>월
	<%=cal.get(Calendar.DAY_OF_MONTH)%>년</p>
	<script>
		var today = new Date();
		document.write("js이름 현재시간:"+today);
	</script>
</body>
</html>