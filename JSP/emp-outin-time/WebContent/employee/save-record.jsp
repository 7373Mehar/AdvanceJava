<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ include file="../navbar.jsp" %>
<%
String path="C:/CETPA/weekend/adv/5-7/web-development/JSP/emp-outin-time/WebContent/photos";
MultipartRequest mpr=new MultipartRequest(request,path,10*1024*1024);
PreparedStatement ps=(PreparedStatement) application.getAttribute("save");
ps.setString(1,mpr.getParameter("eid"));
ps.setString(2,mpr.getParameter("name"));
ps.setString(3,mpr.getParameter("department"));
ps.setString(4,mpr.getOriginalFileName("photo"));
ps.setString(5,"in");
ps.executeUpdate();
%>
<html>
 <body onload="makeActive('add')">
<div class='dv'>
 <label class='lah'>Employee record has been saved successfully</label>
</div>
</body>
</html>