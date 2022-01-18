<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <pre>
  문법: < jsp : include page="합쳐질 모듈화페이지.jsp" />
  합쳐질 모듈화페이지 소스의 실행결과를 가지고  합쳐진다 
 </pre>
 <jsp:include page="header.jsp"/> 	
 <h3>메인화면(includeActionTag.jsp)</h3>
  <%
 	String name="김메인";
    int age = 20;
   %>
 *name : <%=name %><br/>
 *age : <%=age %><br/>
 <a href="sub1.jsp">sub1.jsp로 이동</a>
 <jsp:include page="footer.jsp"/>
</body>
</html>



