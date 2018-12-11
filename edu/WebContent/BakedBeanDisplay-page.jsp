<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>Baked Bean Values: page-based Sharing</h1>
	<jsp:useBean id="pageBean" class="com.edu.beans.BakedBean"/>
	<jsp:setProperty name="pageBean" property="*"/>
	<h2>Bean level:
	<jsp:getProperty name="pageBean" property="level"/></h2>
	<h2>Dish bean goes with:
	<jsp:getProperty name="pageBean" property="goesWith"/></h2>
	</body>
</html>
