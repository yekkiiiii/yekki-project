<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import = "java.sql.*" %>
<%
	String LoginID = (String)session.getAttribute("LoginID");
	if(LoginID==null)
	{
		%>
		<script>
			if(confirm("로그인후 이용해주세요")==true)
			{
				var open = window.open("","_parent");
				open.location.href = "./logIn.jsp";
			}
			else
			{
				var open = window.open("","_parent");
				open.location.href = "./YEKKISTORE.jsp";
			}
		</script>
		<%
	}
%>   