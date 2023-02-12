<%@page import="java.sql.PreparedStatement"%>
<%
PreparedStatement ps1=(PreparedStatement) application.getAttribute("outstatus");
ps1.setString(1,request.getParameter("status"));
ps1.setString(2,request.getParameter("eid"));
ps1.executeUpdate();
%>