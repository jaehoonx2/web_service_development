<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<BODY>
<TABLE BORDER=5 ALIGN="CENTER">
  <TR><TH CLASS="TITLE">
      Shared Access Counts: Page 2</TABLE>
<P>
<jsp:useBean id="counter"
             class="com.edu.beans.AccessCountBean"
             scope="application">

<jsp:setProperty name="counter"
                 property="firstPage"
                 value="SharedCounts2.jsp" />
</jsp:useBean>

Of SharedCounts2.jsp (this page),
<A HREF="SharedCounts1.jsp">SharedCounts1.jsp</A>, and
<A HREF="SharedCounts3.jsp">SharedCounts3.jsp</A>,
<jsp:getProperty name="counter" property="firstPage" />
was the first page accessed.
<P>
Collectively, the three pages have been accessed
<jsp:getProperty name="counter" property="accessCount" />
times.
<jsp:setProperty name="counter" property="accessCountIncrement"
                 value="1" />
</BODY>
</html>
