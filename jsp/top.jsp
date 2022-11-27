<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ include file = "./oracleAccount.jsp" %>

<%!String nickname; %>
<%
	String LoginID = (String)session.getAttribute("LoginID");
    request.setCharacterEncoding("UTF-8");
    try{
        Class.forName("oracle.jdbc.driver.OracleDriver");
	    Connection conn = DriverManager.getConnection(url,dbID,dbPW);
        String sql = "SELECT nickname FROM member where memberID=?";
        PreparedStatement pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, LoginID);
        ResultSet rs = pstmt.executeQuery();
        rs.next();
        nickname = rs.getString(1);
        pstmt.close();
	    conn.close();
    }catch(SQLException ex){}

%>   
 
<!DOCTYPE html>
<html>
    <head>
		<meta charset="UTF-8">
        <link rel="stylesheet" href="../css/topstyle.css?v=1" type = "text/css">
    	<script>
    		function goYEKKISTORE()
    		{
    			var open = window.open("","_parent");
				open.location.href = "./YEKKISTORE.jsp";
    		}		
    	</script>
    </head>

    <body>
    	<div class = "top">
    		<div class = "mark">
    			<img src = "../images/yekkimark.png" alt ="mark" onclick = "javascript:goYEKKISTORE();">
    			<span><b>YEKKI STORE</b></span>
    		</div>
    	 </div>

<!-- 로그인 유무에 따라 바뀌는 상단메뉴 구현 -->
<% 
	if(LoginID==null)
	{
		%>
		<div id = "topMenu">
	   	  <ul>
	   		  <li><a class = "menuLink" href="logIn.jsp" target="_parent">
              <button type ="button" >Sign in</button></a></li>
              		
              <li><a class = "menuLink" href="signUp.jsp" target="_parent">
              <button type ="submit">Sign up</button></a></li>
          </ul>
	   </div>
	   <%
	}
	else
	{
		%>
		<div id = "topMenu">
	   	  <ul>
	   		  <li><a class = "menuLink" href="logout.jsp" target="_parent">
          	  <button type ="button" class = "afterLogin" ><img src = "../images/out.png">Sign out</button></a></li>
          	  
          	  
          	  <li><a class = "menuLink" href="myPage.jsp" target="main">
          	  
     	      <button type ="button" class = "afterLogin"><img src = "../images/myinfo.png"><%=nickname %> 님</button>
     	      </a></li>
     	      
   		 </ul>
	   </div>
	<%} %>
	
</html>
