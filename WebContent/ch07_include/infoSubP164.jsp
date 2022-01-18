<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--
infoP164.jsp에서 넘어온 파라미터받기
< jsp : include page="infoSubP164.jsp">
 	< jsp : param name="type" value="A"/>
 </ jsp : include>	--%>
<%
//String 변수명=request.getParameter("파라미터명");
String type=request.getParameter("type");
String color=request.getParameter("color");
if(type==null){
	return; //종료-> 여기에서는 화면에 아무것도 출력되지x
}
%>
 <h3>*infoSubP164.jsp(p164)</h3>
 <ul>
  <li>타입 : <%=type %> </li>
  <li>특징 : 
  <% //스크립트릿. 자바코드작성부분
    //"기준문자열".equals("비교문자열") : 기준문자열과 비교문자열의 값일치하면 true
   if(type.equals("A")){  
	   out.println("강한 내구성");
   }else if(type.equals("B")){
	   out.println("뛰어난 대처 능력");
   }
  %>
  </li>
  <li>색상 : <font color=<%=color %>><%=color %></font>,
  <span style="color:<%=color%>;"><%=color %></span></li>
  
 </ul>
 
 
 
 
 
 
 

