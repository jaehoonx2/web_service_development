<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<CENTER>
<TABLE BORDER=5>
  <TR><TH CLASS="TITLE">
      Using jsp:setProperty</TABLE>
<jsp:useBean id="entry" class="com.edu.beans.SaleEntry"/>
<jsp:setProperty	name="entry"
					property="itemID"
					value='<%= request.getParameter("itemID") %>'/>
	<%
		int numItemsOrdered = 1;
		try {
		  numItemsOrdered =
		    Integer.parseInt(request.getParameter("numItems"));
		} catch(NumberFormatException nfe) {}
	%>

<jsp:setProperty	name="entry"
    				property="numItems"
    				value="<%= numItemsOrdered %>" />

	<%
		double discountCode = 1.0;
		try {
		  String discountString =
		    request.getParameter("discountCode");
		  discountCode =
		    Double.parseDouble(discountString);
		} catch(NumberFormatException nfe) {}
	%>

<jsp:setProperty
    			name="entry"
    			property="discountCode"
    			value="<%= discountCode %>" />
<BR>

<TABLE BORDER=1>
<TR CLASS="COLORED">
  <TH>Item ID<TH>Unit Price<TH>Number Ordered<TH>Total Price
<TR ALIGN="RIGHT">
  <TD><jsp:getProperty name="entry" property="itemID" />
  <TD>$<jsp:getProperty name="entry" property="itemCost" />
  <TD><jsp:getProperty name="entry" property="numItems" />
  <TD>$<jsp:getProperty name="entry" property="totalCost" />
</TABLE>
</CENTER>
</body>
</html>
