<%@ page contentType="text/html; charset=UTF-8"%>
<html>
<head>
<title>Result</title>
</head>
<body>
<%
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");

	if(id.isEmpty() || pwd.isEmpty()){
		request.setAttribute("error", "ID 또는 비밀번호를 입력해주세요!");
		RequestDispatcher rd = request.getRequestDispatcher("loginOut.jsp");
		rd.forward(request, response);
		return;
	}
%>

<%= id %> / <%= pwd %>
</body>
</html>
