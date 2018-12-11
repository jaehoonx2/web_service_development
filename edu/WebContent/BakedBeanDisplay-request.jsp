<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>Baked Bean Values: request-based Sharing</h1>
	<jsp:useBean id="requestBean" class="com.edu.beans.BakedBean" scope="request"/>
	<jsp:setProperty name="requestBean" property="*"/>
	<h2>Bean level:
	<jsp:getProperty name="requestBean" property="level"/></h2>
	<h2>Dish bean goes with:
	<jsp:getProperty name="requestBean" property="goesWith"/></h2>
	<jsp:include page="BakedBeanDisplay-snippet.jsp"/>
	</body>
</html>
