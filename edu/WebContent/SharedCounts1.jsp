<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<TABLE BORDER=5 ALIGN="CENTER">
  <TR><TH CLASS="TITLE">
      Shared Access Counts: Page 1</TABLE>
<P>

	<jsp:useBean id="counter" class="com.edu.beans.AccessCountBean" scope="application">
	<jsp:setProperty name="counter" property="firstPage" value="SharedCounts1.jsp"/>
	</jsp:useBean>
	Of SharedCounts1.jsp(this page),
	<a href="SharedCounts2.jsp">SharedCounts2.jsp"</a>, and
	<a href="SharedCounts3.jsp">SharedCounts3.jsp"</a>,
	<jsp:getProperty name="counter" property="firstPage"/>
	was the first page accessed.
	<p>
	Collectively, the three pages have been accessed
	<jsp:getProperty name="counter" property="accessCount"/>
	times.
	<jsp:setProperty name="counter" property="accessCountIncrement" value="1"/>
</body>
</html>
