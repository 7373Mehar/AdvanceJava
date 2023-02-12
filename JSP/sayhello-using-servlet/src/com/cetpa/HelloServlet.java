package com.cetpa;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/hello")
public class HelloServlet extends HttpServlet 
{
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String name=request.getParameter("str");
		response.setContentType("text/html");
		PrintWriter pw=response.getWriter();
		pw.println("<html>");
		pw.println("<body>");
		pw.println("<h1>Hello "+name+"</h1>");
		pw.println("</body>");
		pw.println("</html>");
	}
}
