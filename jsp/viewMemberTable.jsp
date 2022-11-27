<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ include file = "./oracleAccount.jsp"%>
<html>
	<head>
	</head>
	<body>
		<table width ="800" border = "1" align = "center">
			<tr>
			<th>id</th>
			<th>password</th>
			<th>name</th>
			<th>nickname</th>
			<th>phone number</th>
			<th>city</th>
			<th>gu</th>
			<th>gil</th>
			<th>account</th>
			</tr>

<%
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection conn = DriverManager.getConnection(url,dbID,dbPW);
		Statement stmt = conn.createStatement();

		String strSQL = "SELECT * FROM member";
		ResultSet rs = stmt.executeQuery(strSQL);
		while(rs.next()){ 
			out.print("<tr>");
			out.print("<td>" + rs.getString("memberID") + "</td>"); 
			out.print("<td>" + rs.getString("memberPW") + "</td>");
			out.print("<td>" + rs.getString("name") + "</td>");
			out.print("<td>" + rs.getString("nickname") + "</td>");
			out.print("<td>" + rs.getString("phonenum") + "</td>");
			out.print("<td>" + rs.getString("city") + "</td>");
			out.print("<td>" + rs.getString("gu") + "</td>");
			out.print("<td>" + rs.getString("gil") + "</td>");
			out.print("<td>" + rs.getString("account") + "</td>");
			out.print("</tr>");
		}
		rs.close();
		stmt.close();
		conn.close();
	}
	catch(SQLException ex){}		
 %>
 
   </table>
 </body>
</html>