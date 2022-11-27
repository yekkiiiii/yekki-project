<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file = "./oracleAccount.jsp" %>
<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection conn = DriverManager.getConnection(url,dbID,dbPW);
		String sql = "SELECT count(*) FROM member where memberID=? and memberPW =?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1,id);
		pstmt.setString(2,pw);
		ResultSet rs = pstmt.executeQuery();
		if(rs.next() && rs.getInt(1)>0) // rs.next() 해서 select 된 레코드의 첫번째 요소를 읽어 0보다 크면
		{
			session.setAttribute("LoginID",id);
			response.sendRedirect("./YEKKISTORE.jsp");
		}
		rs.close();
		pstmt.close();
		conn.close();
	} catch(SQLException ex){}
	%>
	
<script>
	alert('로그인에 실패하였습니다. id 또는 password를 확인 해 주세요');
	history.go(-1);
</script>      

