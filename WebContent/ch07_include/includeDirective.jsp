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
 *include액션태그
  문법: < jsp : include page="합쳐질 모듈화페이지.jsp" />
  합쳐질 모듈화페이지 소스의 실행결과를 가지고 -> 합쳐진다
  
 *include지시어 
  문법:  < % @ include file="합쳐질 모듈화페이지.jsp"%>
  합쳐질 모듈화페이지 소스자체를 가져와 -> 합친후-> 실행한다
  주의 : 변수명 등의 중복 주의
 </pre>

 <%@ include file="header2.jsp"%>
 
 <h3>메인화면(includeDirective.jsp)</h3>
  <%
 	String name2="김메인2";
    int age = 40;
   %>
 *name : <%=name2 %><br/>
 *age : <%=age %><br/>
 <a href="sub2.jsp">sub2.jsp로 이동</a>
 <%@ include file="footer2.jsp"%>
</body>
</html>



