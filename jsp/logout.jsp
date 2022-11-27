<%@ page contentType="text/html;charset=utf-8" %>
<%
	session.invalidate();
%>
<html>
<head>
</head>
<body>
	<script>
		alert('로그아웃 되었습니다');
		location.href = './YEKKISTORE.jsp';
	</script>
</body>
</html>