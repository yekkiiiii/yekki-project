<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" >
<head>
<meta http-equiv = "Content-Type" content = "text/html " charset="UTF-8">
<meta name = "viewport" content = "width=device-width, initial-scale = 1.0">
<link rel="stylesheet" href="../css/signupstyle.css?v=50" type = "text/css">
<script src="../javascript/signUpCheck.js"></script>
</head>

<body>
<div class = "top">
    <div class = "mark">
    	<img src = "../images/yekkimark.png" alt ="mark"onclick = "javascript:location.href ='./YEKKISTORE.jsp';">
    	<span><b>YEKKI STORE</b></span>
    </div>
</div>


<form action = "./signUpPro.jsp" method = "post" name = "signupform" onsubmit = "return checkExistBlank(); ">
	<div class = "member"> 
    	<div class = "field">
  			<b>ID</b>
    		<input id = "userid" name = "id" type= "text">
    		<div class = "error" id = "iderror"></div>
    	</div>
    	
    	<div class = "field">
    		<b>Password</b>
    		<input id = "userpw" name = "pw" type = "password">
    	</div>
    	
    	<div class = "field">
    		<b>Confirm Password</b>
    		<input id = "confirmpw" name = "confpw"type = "password">
    		<div class = "error" id = "pwerror"></div>
    	</div>
    	
    	 <div class = "field">
    		<b>Name</b>
    		<input id = "username" name = "name"type = "text">
    		<div class = "error" id = "nameerror"></div>
    	</div>
    	
    	<div class = "field">
    		<b>Nickname</b>
    		<input id = "usernickname" name = "nickname"type = "text">
    		<div class = "error" id = "nicknameerror"></div>
    	</div>	
    	
    	<div class = "phone-number">
    		<b>Phone number</b>
    		<select>
    			<option value ="">kor +82</option>
    		</select>
    		<div>
    			<input type = "text" id = "userphnum" name = "pnum">
    		</div>
    		<div class = "error" id = "pnumerror"></div>
    	</div>
    	
    	<div class = "account">
    		<b>Account number</b>
    		<input name = "account" id = "useraccount" type = "text">
    		<div class = "error" id = "accounterror"></div>
    	</div>
    	
    	
    	<div class = "address">
    	<b>Address</b>
    	<div>
    		 <select name = "city">
    		 	<option value ="부산광역시">부산광역시</option>
    		 </select>
 
    		<select name ="gu">
    			<option value ="사상구">사상구</option>
    			<option value ="금정구">금정구</option>
    			<option value ="북구">북구</option>
    			<option value ="강서구">강서구</option>
    			<option value ="사하구">사하구</option>
    			<option value ="부산진구">부산진구</option>
    			<option value ="동래구">동래구</option>
    			<option value ="연제구">연제구</option>
    			<option value ="수영구">수영구</option>
    			<option value ="해운대구">해운대구</option>
    			<option value ="남구">남구</option>
    			<option value ="영도구">영도구</option>
    			<option value ="서구">서구</option>
    	    </select>
    			<input type = "text" id = "useraddress" name ="gil">
    			<div class = "error" id = "addresserror"></div>
      </div>
    </div>
    
    				
    	<input id = "sub" type = "submit" value = "Sign up">
   
    	<div class = "footer">
    		<div>
    			<a href = "#none"> 이용약관</a>
    			<a href = "#none"> 개인정보처리방침</a>
    			<a href = "#none"> 고객센터</a>
    			<a href = "#none"> 사실없어요</a>
    		<div>
    		<span>공동대표 : H&Y</span>
    	    </div>
    	</div>
      </div>
 </div>
 </form>
 
</body>
</html>