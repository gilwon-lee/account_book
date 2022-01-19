<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session p232~</title>
</head>
<body>
 <h2>session P236</h2>
 <% //p236
  //원래 로그인처리가 성공되면 DB에서 가져온 데이터를 session에 설정해야한다.
  //session.setAttribute(String name,Object value):세션에 특정 정보를 저장.설정
  //session.setAttribute(속성명,속성값)
  session.setAttribute("MID", "hid"); //회원id hid
  session.setAttribute("MNICK", "의적홍길동");//회원별명 "의적홍길동"
  session.setAttribute("MGRAGE", 1);
  //int타입 1은 session에 저장되면서 Object(클래스화 된다.)
  //int 기본타입의 래퍼클래스인 Intger로 저장된다.
 %>
 세션에 정보를 저장완료.
 <a href="sessionP236-2.jsp">다른페이지로 이동</a>
 
 <p><hr/></p>
 <% //p235
 String sessionId= session.getId(); //★★★
 long createTime=session.getCreationTime(); //리턴타입 long기억하세요!!!★
 long lastATime= session.getLastAccessedTime();
 %>
 *sessionId : <%=sessionId %><br/>
 *세션이 생성된 시간(1970/01/01 자정이후의 시간. ms초단위. 1ms=1/1000초)
 :<%=createTime %><br/>
 *웹 브라우저가 가장 마지막에 세션에 접근한 시간(1970/01/01 자정이후의 시간. ms초단위. 1ms=1/1000초)
 :<%=lastATime %><br/>
</body>
</html>










