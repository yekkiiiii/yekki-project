<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file = "./oracleAccount.jsp" %>
<!DOCTYPE html>
<html lang="en" >
<head>
        <meta http-equiv = "Content-Type" content = "text/html " charset="UTF-8">
        <link rel="stylesheet" href="../css/editstyle.css?v=19" type = "text/css">
        <meta name = "viewport" content = " width = device-width, initial-scale =1" >
        <script>
        	function ConfirmPW(){
        		var pw = document.getElementById('upw').value;
        		var conf = document.getElementById('confirmpw').value;
        		if(conf=="")
        		{
        			document.getElementById("pwerror").innerHTML = "비밀번호를 확인해 주세요 "
            		return false;	
        		}
        		
        		if(conf!=pw)
        		{
        			document.getElementById('confirmpw').value = null;
        			document.getElementById("pwerror").innerHTML = "비밀번호가 일치하지 않습니다."
        			return false;	
        		}
        		
        		return true;
        	}
        	
        </script>
</head>
<body>
<%!
	String ID;
	String PW;
	String name;
	String nickname;
	String phonenum;
	String city;
	String gu;
	String gil;
	String account;
%>
<%
    request.setCharacterEncoding("UTF-8");
    String LoginID = (String)session.getAttribute("LoginID");
    
    try{
        Class.forName("oracle.jdbc.driver.OracleDriver");
	    Connection conn = DriverManager.getConnection(url,dbID,dbPW);
        String sql = "SELECT * FROM member where memberID=? ";
        PreparedStatement pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, LoginID);
        ResultSet rs = pstmt.executeQuery();
        rs.next();
        ID = rs.getString(1);
        PW = rs.getString(2);
        name = rs.getString(3);
        nickname = rs.getString(4);
        phonenum = rs.getString(5);
        city = rs.getString(6);
        gu = rs.getString(7);
        gil = rs.getString(8);
        account = rs.getString(9);
        pstmt.close();
	    conn.close();
    }catch(SQLException ex){}
%>
	   <div>
       		<span><b>EDIT INFO</b></span>
       </div>
       <br><br>
       
     <form action ="./editInfoPro.jsp"  method = "post" onsubmit = "return ConfirmPW(); ">
       <div class = "bg">
        <div class = "myPage">
            <div class = "info">
            	<div class = "cell1">
            		<b>ID</b>
            	</div>
            	<div class = "cell2">
            		<b><%= ID %></b>
            	</div>
            </div>
            <div class = "info">
            	<div class = "cell1">
            		<b>PW</b>
            	</div>
            	<div class = "cell2">
            		<input type = "text" name ="pw"  id = "upw" value = "<%= PW %>">
            	</div>
            </div>
            <div class = "info">
            	<div class = "cell1">
            		<b>Confirm PW</b>
            	</div>
            	<div class = "cell2">
            		<input type = "text" name = "conf" id = "confirmpw" >
            		<div class = "error" id = "pwerror"></div>
            	</div>
            </div>
            <div class = "info" >
            	<div class = "cell1">
            		<b>Name</b>
            	</div>
            	<div class = "cell2">
            		<input type = "text" name = "name" value = "<%= name %>">
            	</div>
            </div>
            <div class = "info">
            	<div class = "cell1">
            		<b>Nickname</b>
            	</div>
            	<div class = "cell2">
            		<input type = "text" name = "nickname" value = "<%= nickname %>">
            	</div>
            </div>
            <div class = "info">
            	<div class = "cell1">
            		<b>Phone</b>
            	</div>
            	<div class = "cell2">
            		<input type = "text" name = "phonenum" value = "<%= phonenum %>">
            	</div>
            </div>
            
            <div class = "info">
            	<div class = "cell1">
            		<b>Address</b>
            	</div>
            	<div class = "cell2">
            		<select name = "city" class = "city">
    		 		<option value ="부산광역시">부산광역시</option>
    		 		</select>
 
    				<select name ="gu" class = "gu">
    					<option value ="사상구" <%if(gu.equals("사상구")){%> selected<%} %>>사상구</option>
    					<option value ="금정구" <%if(gu.equals("금정구")){%> selected<%} %>>금정구</option>
    					<option value ="북구" <%if(gu.equals("북구")){%> selected<%} %>>북구</option>
    					<option value ="강서구" <%if(gu.equals("강서구")){%> selected<%} %>>강서구</option>
    					<option value ="사하구" <%if(gu.equals("사하구")){%> selected<%} %>>사하구</option>
    					<option value ="부산진구" <%if(gu.equals("부산진구")){%> selected<%} %>>부산진구</option>
    					<option value ="동래구" <%if(gu.equals("동래구")){%> selected<%} %>>동래구</option>
    					<option value ="연제구" <%if(gu.equals("연제구")){%> selected<%} %>>연제구</option>
    					<option value ="수영구" <%if(gu.equals("수영구")){%> selected<%} %>>수영구</option>
    					<option value ="해운대구" <%if(gu.equals("해운대구")){%> selected<%} %>>해운대구</option>
    					<option value ="남구" <%if(gu.equals("남구")){%> selected<%} %>>남구</option>
    					<option value ="영도구" <%if(gu.equals("영도구")){%> selected<%} %>>영도구</option>
    					<option value ="서구" <%if(gu.equals("서구")){%> selected<%} %>>서구</option>
    	    		</select>
            		<input type = "text" name = "gil" value = "<%= gil %>">
            	</div>
            </div>
            
            <div class = "info">
            	<div class = "cell1" style ="border : 0">
            		<b>Account</b>
            	</div>
            	<div class = "cell2" style ="border : 0">
            		<input type = "text" name = "account" value = "<%= account %>">
            	</div>	
            </div>
        </div>
                  <button type = "button" class = "return" onclick = "history.go(-1);">
       				<img src = "../images/return.png">
        		  </button>
        		  <input type = "submit" class = "modify" value = "수정 하기">
     </div>
   </form>
</body>
</html>