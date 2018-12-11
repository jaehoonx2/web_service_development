package com.edu.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/queryTest")
public class QueryTestServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id = req.getParameter("id");
		String password = req.getParameter("pwd");
		String[] hobbies = req.getParameterValues("hobby");
		String gender = req.getParameter("gender");
		String intro = req.getParameter("introduction");

		resp.setContentType("text/html;charset=UTF-8");
		PrintWriter out = resp.getWriter();

		out.print("<html><head><title>Test</title></head>");
		out.print("<body>");
		out.print("ID : " + id + "<br/>");
		out.print("ID : " + password + "<br/>");
		for(int i = 0; i < hobbies.length; i++){
			out.print(hobbies[i] + " ");
		}
		out.print("<br/>");
		out.print("���� : " + gender + "<br/>");
		out.print("�Ұ� : " + intro + "<br/>");
		out.print("��ü ���� ���ڿ� : " + req.getQueryString());
		out.print("</body>");
		out.print("</html>");
		out.close();
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html;charset=UTF-8");
		PrintWriter out = resp.getWriter();
		out.print("<html><head><title>���� ���ڿ� �׽�Ʈ</title></head>");
		out.print("<body>");
		out.print("<h1>Post ������� ��û�Ǿ����ϴ�</h1>");
		out.print("</body></html>");
		out.close();
	}
}
