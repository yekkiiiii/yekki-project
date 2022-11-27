<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ include file = "./oracleAccount.jsp"%>
<%
	request.setCharacterEncoding("UTF-8");
	String LoginID = (String)session.getAttribute("LoginID");
	String user_pw = request.getParameter("pw");
	String user_name = request.getParameter("name");
	String user_nickname = request.getParameter("nickname");
	String city = request.getParameter("city");
	String gu = request.getParameter("gu");
	String gil = request.getParameter("gil");
	String user_pnum = request.getParameter("phonenum");
	String user_account = request.getParameter("account");
	
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection conn = DriverManager.getConnection(url,dbID,dbPW);
		String sql = "UPDATE member SET  memberPW =?, name =?, nickname =?, phonenum =?, city =?, gu =?, gil =?, account =? WHERE memberID = ? "; 
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, user_pw);
		pstmt.setString(2, user_name);
		pstmt.setString(3, user_nickname);
		pstmt.setString(4, user_pnum);
		pstmt.setString(5, city);
		pstmt.setString(6, gu);
		pstmt.setString(7, gil);
		pstmt.setString(8, user_account);
		pstmt.setString(9,LoginID);
		int result = pstmt.executeUpdate();
		pstmt.close();
		conn.close();

		}catch(SQLException ex){ex.printStackTrace();}
%>

<script>
	alert("회원님의 정보가 수정되었습니다.");
	history.go(-2);
</script>
