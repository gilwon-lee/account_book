<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파라미터추가하기</title>
</head>
<body>
 <h2>* < jsp : param >으로  파라미터 추가하기-infoP164.jsp(p163) </h2>
 
 <ul>
  <li>제품번호 : 1234</li>
  <li>가격 : 10000원</li>
 </ul>
   
 <jsp:include page="infoSubP164.jsp">
 	<jsp:param name="type" value="B"/>
 	<%--넘기고 싶은 파라미터가 있으면 계속 추가하면 된다. --%>
 	<jsp:param name="color" value="red"/>
 </jsp:include>	
</body>
</html>

 <%--
 a.jsp?uname=홍길동&uid=hid&uno=100
 <form action="서버에서 파라미터받아서 처리할 페이지a.jsp">
 	<input type="text" name="uname"/>홍길동
 	<input type="text" name="uid" value="hid"/>
 	<input type="hidden" name="uno" value="100"/>
 </form>
 
 a.jsp 클라이언트에서 요청시 넘어온 파라미터받기
 String 변수명=request.getParameter("파라미터명");
 String uname=request.getParameter("uname");
 String uid=request.getParameter("uid");
 String uno=request.getParameter("uno");
  --%>












