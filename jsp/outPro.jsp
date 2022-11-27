<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file = "./oracleAccount.jsp" %>
<%
    request.setCharacterEncoding("UTF-8");
    String LoginID = (String)session.getAttribute("LoginID");
    try{
        Class.forName("oracle.jdbc.driver.OracleDriver");
	    Connection conn = DriverManager.getConnection(url,dbID,dbPW);

        String sql = "DELETE FROM member WHERE memberID = ?";
        PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1,LoginID);
        int result = pstmt.executeUpdate();
        if(result==1)
        {
            session.invalidate();
        }
        pstmt.close();
		conn.close();

	} catch(SQLException ex){}

%>
<script>
    alert('회원탈퇴 되었습니다.');
    var open = window.open("about:blank");
	open.location.href = "./YEKKISTORE.jsp";
</script>