<%@ page contentType="text/html; charset=UTF-8"%>
<html>
<head>
<title>Input</title>
</head>
<body>
<%
	String msg = (String) request.getAttribute("error");
	if(msg == null) msg ="";
%>
<%=msg%>
<form action="example10.jsp" method="post">
	ID: <input type="text" name="id"><br>
	비밀번호: <input type = "password" name="pwd"><br>
	<input type="submit" value="로그인">
</form>
</body>
</html>
