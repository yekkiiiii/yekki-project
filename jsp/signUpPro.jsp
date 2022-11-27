<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ include file = "./oracleAccount.jsp"%>
<%
	request.setCharacterEncoding("UTF-8");
	String user_ID = request.getParameter("id");
	String user_pw = request.getParameter("pw");
	String user_name = request.getParameter("name");
	String user_nickname = request.getParameter("nickname");
	String city = request.getParameter("city");
	String gu = request.getParameter("gu");
	String gil = request.getParameter("gil");
	String user_pnum = request.getParameter("pnum");
	String user_account = request.getParameter("account");
	
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection conn = DriverManager.getConnection(url,dbID,dbPW);
		String sql = " INSERT INTO member VALUES(?,?,?,?,?,?,?,?,?) ";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, user_ID);
		pstmt.setString(2, user_pw);
		pstmt.setString(3, user_name);
		pstmt.setString(4, user_nickname);
		pstmt.setString(5, user_pnum);
		pstmt.setString(6, city);
		pstmt.setString(7, gu);
		pstmt.setString(8, gil);
		pstmt.setString(9, user_account);
		
		
		out.println(user_ID);
		out.println(user_pw);
		out.println(user_name);
		out.println(user_nickname);
		out.println(user_pnum);
		out.println(user_account);
		
        int result = pstmt.executeUpdate();
        
        //if(result ==1)	
        //{out.println("저장 성공");}
        //else {out.println("저장 실패");}
		pstmt.close();
		conn.close();

}catch(SQLException ex){ex.printStackTrace();}

%>

<script>
	alert('회원가입이 완료되었습니다 로그인해 주세요');
	location.href = "./logIn.jsp";
</script>



