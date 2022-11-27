<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ include file = "./oracleAccount.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv = "Content-Type" content = "text/html " charset="UTF-8">
        <link rel="stylesheet" href="../css/infostyle.css?v=17" type = "text/css">
        <meta name = "viewport" content = " width = device-width, initial-scale =1" >

    </head>
    <body>
<%!
	String ID;
	String PW;
	String name;
	String nickname;
	String phonenum;
	String address;
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
        address = rs.getString(6)+ " "+rs.getString(7)+" "+rs.getString(8);
        account = rs.getString(9);
        pstmt.close();
	    conn.close();
    }catch(SQLException ex){}
%>
	   <div>
       		<span><b>MY INFO</b></span>
       </div>
       <br><br>
       <div class = "bg">
        <div class = "myPage">
            <div class = "info">
            	<div class = "cell1">
            		<b>ID :</b>
            	</div>
            	<div class = "cell2">
            		<%= ID %>
            	</div>
            </div>
            <div class = "info">
            	<div class = "cell1">
            		<b>PW :</b>
            	</div>
            	<div class = "cell2">
            		<%= PW %>
            	</div>
            </div>
            <div class = "info" >
            	<div class = "cell1">
            		<b>Name :</b>
            	</div>
            	<div class = "cell2">
            		<%= name %>
            	</div>
            </div>
            <div class = "info">
            	<div class = "cell1">
            		<b>Nickname :</b>
            	</div>
            	<div class = "cell2">
            		<%= nickname %>
            	</div>
            </div>
            <div class = "info">
            	<div class = "cell1">
            		<b>Phone :</b>
            	</div>
            	<div class = "cell2">
            		<%= phonenum %>
            	</div>
            </div>
            
            <div class = "info">
            	<div class = "cell1">
            		<b>Address :</b>
            	</div>
            	<div class = "cell2">
            		<%= address %>
            	</div>
            </div>
            
            <div class = "info">
            	<div class = "cell1" style ="border : 0">
            		<b>Account :</b>
            	</div>
            	<div class = "cell2" style ="border : 0">
            		<%= account %>
            	</div>	
            </div>
        </div>
        <button type = "button" class = "return" onclick = "history.go(-1);">
       			<img src = "../images/return.png">
        </button>
     </div>
 
    </body>
</html>