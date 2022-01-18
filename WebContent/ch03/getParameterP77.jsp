<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" 
    import="java.util.Enumeration, java.util.Map" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>getParameterP77</title>
</head>
<body>
	<h3>*request객체의 요청파라미터 처리(p77)*</h3>
	<p><%=request.getRequestURL() %>
	<pre>*클라이언트가 form을 통해서 입력,선택한 내용을 받아서 처리하는 
	서버측 페이지이다.
	<hr/>
	<%
	/* request.getParameter() = 단일 대상	
	request.getParameterValues() = 다중 대상 
	반복문을 이용하여 배열안의 값을 가져온다.
	for(int i=0;범위;i++)
	for(String temp : pets)*/
	
	//URL+입력값 --> 입력값을 쿼리 스트링이라고 함 
	String name = request.getParameter("mname");
	String id = request.getParameter("mid");
	String pwd = request.getParameter("pwd");
	String gender = request.getParameter("gender");
	String pet = request.getParameter("pet");
	String[] pets = request.getParameterValues("pet");
	out.println(id);
	%>
	<ul>
		<li>이름:<%=name %></li>
		<li>아이디:<%=id %></li>
		<li>패스워드:<%=pwd %></li>
		<li>성별:<%=gender %></li>
		<li>좋아하는 동물:<%
		for(int i=0;i<pets.length;i++){
			out.print(pets[i]+" ");
		}
		%>
		
		<%
		for(String temp : pets){
			out.print(temp+" ");
		}
		%>
		</li>
	</ul>
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
	Map은 key와 value로 구성된다.

	타입 종류
	-기본타입 : 정수, 실수,논리형,문자
	-참조타입 : heap 영역에 주소가 저장 되는 
	
	String[] names = new String[3];
	names[0]=홍길동;
	names[1]=김길동;
	names[2]=김구;
	String[] names = {"홍길동","김길동,"김구"};
	
	Car myCar = new Car(); //myCar변수에는 주소가 저장된다.
	Car yourCar = new Car(); //yourCar변수에는 다른 주소가 저장된다.
	
	자동차는 기계이다 . Car is a machine
	TV는 기계이다. TV is a machine
	다형성 : 부모 타입 참조변수에는 다양한 객체가 저장될 수 있다.
	부모클래스 참조변수 = new 자식클래스생성자();
	
	*Collection
	- 다양한 타입의 값이 여러개 저장,관리하기 위한 필드, 기능을 제공하는
	  인터페이스,클래스의 집함
	- list인터페이스, Set인터페이스,Map 인터페이스
	<%
	//request.getParameterMap() : 자바의 Map을 사용하여 
	//파라미터 이름과 파라미터 값을 리턴한다.
	//Map<key의 데이터타입, value데이터타입>  ::장바구니 할떄 유용
		Map<String,String[]> parameterMap 
		= request.getParameterMap();
	//get() : Key를 이용하여 해당 Key를 가져오기
		String[] nameParam = parameterMap.get("mname");

		out.println("사용자 이름 :"+nameParam[0]);
	// 1개 이상의 값이 넘어올 수 있는 애완동물 값 가져오기 
		String[] petParam = parameterMap.get("pet");
		out.print("펫이름 이름 :");
		for(String p: petParam){
			out.println(p);
		}

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


