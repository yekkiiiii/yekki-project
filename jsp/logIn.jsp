<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" >
<head>
  <meta http-equiv = "Content-Type" content = "text/html " charset="UTF-8">
  <meta name = "viewport" content = " width = device-width, initial-scale =1" >
  <link rel="stylesheet" href="../css/loginstyle.css?after" type = "text/css">
</head>
<body>

 <div class = "top">
    <div class = "mark">
    	<img src = "../images/yekkimark.png" alt ="mark"onclick = "javascript:location.href ='./YEKKISTORE.jsp';">
    	 <span><b>YEKKI STORE</b></span>
    </div>
</div>

<form action = "loginPro.jsp" method = "post" name = "loginform">
<div class = "member">
  <div class = "field">
    	<input class ="userid" type="text" name = "id" placeholder = "ID" required>
  </div>
  
  <div class = "field">
    	<input class = "userpw" type="password" name = "pw"  placeholder="Password" required/>
  </div>
  <input class="sub" type="submit" value = "Log in">
  <input class="signup" type="button" value="Sign Up" onclick="location.href='./signUp.jsp'">
</div>

</form>
</body>
</html>
