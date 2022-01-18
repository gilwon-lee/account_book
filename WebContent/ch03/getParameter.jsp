<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>request객체의 요청파라미터 처리(p76)</title>
</head>
<body>
	<h3>*request객체의 요청파라미터 처리(p76)*</h3>
	<pre>
	폼 이름 =frm, id="frm"
	서버에서 처리할 페이지="getParameterP77.jsp"
	넘어가는 값이 보여지는 방식
	
	*이름 : type=한줄짜리 text name="mname", id="mname"
	*id : type=한줄짜리 text name="mname", id="mid"
	*비밀번호 : type=비밀번호 name="pwd" id="pwd"
	*성별 : type=:"단일선택" name="gender" id="gender1" value="w"
		   type=:"단일선택" name="gender" id="gender2" value="m"
	*좋아하는 동물:
	type="다중선택" name="pet" id="pet1" values="dog" 강아지
	type="다중선택" name="pet" id="pet2" values="cat" 고양이
	type="다중선택" name="pet" id="pet3" values="pig" 돼지
	</pre>
	<form action="getParameterP77.jsp" name="frm" id="frm" method="get">
	이름 : <input type="text" name="mname" id="mname"><br/>
	id : <input type="text" name="mid" id="mid"><br/>
	비밀번호 :<input type="password" name="pwd" id="pwd"><br/>
	
	성별 : 
	<input type="radio" name="gender" id="gender1" value="w">
	<label for="gender1">여자</label>
	<input type="radio" name="gender" id="gender2" value="m">
	<label for="gender2">남자</label>
	<br/>
	좋아하는 동물 : 
	강아지<input type="checkbox" name="pet" id="pet1" value="dog">
	고양이<input type="checkbox" name="pet" id="pet2" value="cat">
	돼지<input type="checkbox" name="pet" id="pet3" value="pig"><br/>
	<input type="submit" value="submit">
	<input type="reset" value="초기화">
	</form>
</body>
</html>