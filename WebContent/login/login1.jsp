<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
 form {
 	border:3px solid #f1f1f1;/*테두리:3px solid #f1f1f1;*/
 }	
 
 /*type속성의 값이 text인 input요소,type속성의 값이 password인 input요소*/
 input[type="text"],input[type="password"]{ 
   width:100%;/*너비:100%*/
   padding:12px 20px;/*테두리안쪽여백:상하12px 좌우20px;*/
   margin:8px 0;/*margin:상하8px 좌우0;*/
   display:inline-block;/*보이기형식:inline-block;*/
   border:1px solid #ccc;/*테두리:1px solid #ccc;*/
   box-sizing:border-box;/*box-sizing:border-box;*/
   /*box-sizing속성은 요소의 너비와 높이를 계산하는 방법을 지정
     border-box값은 테두리의 안쪽여백의 크기도 요소의 크기로 고려.
     너비를 100px로 설정하고 테두리와 안쪽여벡을 추가하면,
     콘텐츠 영역이 줄어들어    총 너비 100px를 유지-> 대부분의 경우 이 편이 크기조절에 용이*/
 }
  /*type속성의 값이 submit인 input요소*/
 input[type="submit"]{width:100%; /*너비:100%;*/
  background-color:#04AA6D;/*배경색:#04AA6D;*/
  padding:14px 20px; /*테두리안쪽여백:상하14px 좌우20px;*/
  margin:8px 0; /*테두리바깥쪽여백:상하8px 좌우0;*/
  border-style:None; /*테두리:적용X;*/
  cursor:pointer;/*마우스모양:pointer;*/
  color:white;
 }
 input[type="submit"]:hover{
  opacity:0.8;}
  
 .btnCancel{ 
  width:auto;/*너비:자동;*/
  padding:10px 18px;/*테두리안쪽여백:상하10px 좌우18px;*/
  background-color:#f44336;/*배경색:#f44336;*/
  color:white;
  border-style:None;
  border-radius:10px; /* 버튼테두리 */
 }
 
 .imgcontainer{
 text-align:center;
 margin:24px 0 12px 0;
 }
 img.avatar{
 width:30%;
 border-radius:70%;
 }
 span.psw{
 float:right;
 padding-top:16px;}
 /* css의 미디어쿼리를 이용해서 반응형 처리 */
 @media 미디어 타입[and 조건 and 조건]{
 선택자 {css속성명:값;}
 }
</style>
</head>
<body>
<%--    http://localhost:포트번호/컨택스트패스
기준 http://localhost:8081/pro1/ch10/login1.jsp
                           ../images/img_avatar2.png
   http://localhost:8081/pro1/images/img_avatar2.png
--%>
 <form name="frmLogin" id="frmLogin" action="#" method="get">
   <div class="imgcontainer">
   	<img src="img_avatar2.png" alt="아바타이미지" title="아바타이미지" class="avatar"/>
   </div>
   <div class="container">
      <label>ID</label> 
      <input type="text" name="mid" id="mid" placeholder="Enter UserId" required="required"/>
      <label>PASSWORD</label> 
      <input type="password" name="pwd" id="pwd" placeholder="Enter Password" required="required"/>
      <input type="submit" value="Login"/>
   </div>
   <div class="container" style="background-color:#f1f1f1;">
      <input type="button" class="btnCancel" value="Cancel"/>
      <span class="psw">Forgot <a href="#">password?</a></span>
   </div>
 </form>
</body>
</html>




