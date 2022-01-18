<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>request객체의 요청파라미터 처리(p76)</title>
</head>
<body>
 <h3>★request객체의 요청파라미터 처리(p76)★</h3>
 <pre>
 기준 http://localhost:8081/pro1/ch03/getParameterP76.jsp
                                    getParameterP77.jsp</pre> 
 <p><%=request.getRequestURL() %></p>
 <form name="frm" id="frm" action="getParameterP77.jsp"
 	method="get"> 
 	
 *이름 :<input type="text"  name="mname" id="mname"/><br/>
 *id :<input type="text"  name="mid" id="mid"/><br/>
 *비번:<input type="password"  name="pwd" id="pwd"/><br/>
 *성별:
  <input type="radio" name="gender" id="gender1" value="w"/> 
  <label for="gender1">여성</label>
  <input type="radio" name="gender" id="gender2" value="m"/>
  <label for="gender2">남성</label>
  <br/>
 *좋아하는 동물:
 <input type="checkbox" name="pet" id="pet1" value="dog"/>
  강아지           
 <input type="checkbox" name="pet" id="pet2" value="cat"/>
  고양이
 <input type="checkbox" name="pet" id="pet3" value="pig"/>
  복도야지
 <br/>
 <input type="submit" value="확인"/>
 <input type="reset" value="취소"/>
 </form>  
</body>
</html>









