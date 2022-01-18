<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Enumeration"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>★request객체의 요청파라미터 처리(p77)★</h3>
<pre>
 http://localhost:8081/pro1/ch03/getParameterP77.jsp</pre> 
<p><%=request.getRequestURL() %></p>
<pre>
*이 문서는 클라이언트가 form통해서 (입력,선택한)내용을 받아서 처리하는
 서버측 페이지이다
 //id,이름,성별,주민번호 처럼 하나의 parameter에 1개의 값이 넘어올경우
 String 변수 = request.getParameter("파라미터명");
 
 //checkbox 또는 다중선택가능한 select의 경우에는
 //하나의  parameter에 n개의 값이 넘어올경우
 String[] 배열명=request.getParameterValues("파라미터명");
 ->반복문을 이용하여 배열안의 값을 가져온다
</pre> 
<%
//<input type="값"  name="파라미터명"/>
 //<input type="text"  name="mname"/>
 //String 변수 = request.getParameter("파라미터명");
 String name = request.getParameter("mname"); //이름
 String mid = request.getParameter("mid"); //id
 String pwd = request.getParameter("pwd"); //비번
 String gender = request.getParameter("gender");//성별
 
 //~~~~?~~~&pet=dog&pet=cat&pet=pig
 //String[] pet ={"dog","cat","pig"}
 String[] pets= request.getParameterValues("pet");
%>
<ul>
 <li>이름 : <%=name %></li>
 <li>id : <%=mid %></li>
 <li>비번: <%=pwd %></li>
 <li>성별: <%=gender %></li>
 <li>동물(일반for문 이용): 
 <%
 	for(int i=0;i<pets.length;i++){ 
 		out.print(pets[i]+" "); //배열명[인덱스번호]
 	}
 %>
 </li>
 <li>동물(향상된 for문 이용):  
 <%
 /*	for(데이터타입  변수명 : 배열명또는컬렉션명){
 	 //반복실행코드	
 	}*/
 
 	for(String temp : pets){
 	 	//반복실행코드
 	 	out.print(temp+" ");
 	}	
 %>
 </li>
 </ul>
 <hr/>
 <pre>
 //(파라미터이름을 모를 때..) 파라미터이름들가져오기
<% //---------------------------------
 	//(파라미터이름을 모를 때..) 파라미터이름들가져오기
 	//paramEnum변수안에  파라미터이름들이 저장된다 
 	Enumeration<String> paramEnum = request.getParameterNames();
    //.hasMoreElements() : 가져올 다음 데이터가 존재하면 true, 그렇지않으면 false리턴
 	while(paramEnum.hasMoreElements()){ //저장된 파라미터이름의 수만큼 반복
 		//반복실행코드
 		//.nextElement(); //다음 요소가져오기
 		//파라미터이름 1개를 가져와 String타입 name2변수에 저장한다
 		String name2= paramEnum.nextElement(); //파라미터명가져오기
 		
 		//String타입 name2변수에 저장된 파라미터명을 이용하여 값을 가져오기
 		String val  = request.getParameter(name2);//해당 파라미터안의 값을 가져오기
 		out.print(name2+":"+val+"<br/>"); //출력형태 파라미터명:값

 	}//while
 %>
 	

 </pre>
</body>
</html>

<%-- 참고
terator 인터페이스에서 쓰이는 메소드는 크게 3개다.

hasNext() : 
뒤에 남은 데이터가 있으면 True, 없으면 False를 반환한다. while 루프를 통한 제어처리시 사용한다.
next() : 자료구조의 다음 데이터를 반환하여, 다음 객체의 레퍼런스를 얻는다.
remove() : 현재 조회하는 객체의 레퍼런스를 삭제한다.





Enumeration은 Iterator에서 remove() 메소드만 빠지고, 이름만 다를 뿐 사용법은 같다.
hasMoreElements() : Iterator의 .hasNext()와 같은 기능이다.
nextElement() : Iterator의 next()와 같은 기능이다. 

 --%>











