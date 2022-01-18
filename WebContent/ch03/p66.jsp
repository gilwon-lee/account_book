<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- JSP주석문 CRTL+SHIFT+/ -->
<%
	/* 자바 코드 주석문 */
	//P66 반복물 이용한 총합 출력
	//총합 저장하기 위한 변수선언
	int sum=0;
	for(int i=1;i<11;i++){
		sum+=i;
		System.out.println(sum);
		out.println("sum="+sum+"<br/>");
	}
%>
<hr/>
<%
	/* 자바 코드 주석문 */
	//P66 반복물 이용한 총합 출력
	//총합 저장하기 위한 변수선언
	int sum1=0;
	for(int i=1;i<11;i++){
		sum1+=i;
		System.out.println(sum1);
	
%>
	<%="sum1="+sum1 %><br/>
<% 
	}
%>
*1~10까지의 합 : <%=sum %>
</body>
</html>