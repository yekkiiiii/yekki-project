<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ include file = "./oracleAccount.jsp"%>
<html>
	<head>
	</head>
	<body>
		<table width ="800" border = "1" align = "center">
			<tr>
			<th>productID</th>
			<th>memberID</th>
			<th>title</th>
			<th>productName</th>
			<th>Explanation</th>
			<th>code</th>
			<th>price</th>
			<th>img</th>
			</tr>

<%
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection conn = DriverManager.getConnection(url,dbID,dbPW);
		Statement stmt = conn.createStatement();

		String strSQL = "SELECT * FROM products";
		ResultSet rs = stmt.executeQuery(strSQL);
		while(rs.next()){ 
			out.print("<tr>");
			out.print("<td>" + rs.getString("productID") + "</td>"); 
			out.print("<td>" + rs.getString("memberID") + "</td>");
			out.print("<td>" + rs.getString("title") + "</td>");
			out.print("<td>" + rs.getString("productName") + "</td>");
			out.print("<td>" + rs.getString("Explanation") + "</td>");
			out.print("<td>" + rs.getString("code") + "</td>");
			out.print("<td>" + rs.getString("price") + "</td>");
			out.print("<td>" + rs.getString("img") + "</td>");
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