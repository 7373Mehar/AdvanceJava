<%@page import="java.sql.*"%>
<%
String v1=request.getParameter("pid");
String v2=request.getParameter("name");
String v3=request.getParameter("brand");
int v4=Integer.parseInt(request.getParameter("price"));
try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection cn=DriverManager.getConnection("jdbc:mysql://localhost/wjsp5","root","mysql");
	String sql="insert into productinfo values(?,?,?,?)";
	PreparedStatement ps=cn.prepareStatement(sql);
	ps.setString(1,v1);
	ps.setString(2,v2);
	ps.setString(3,v3);
	ps.setInt(4,v4);
	ps.executeUpdate();
}
catch(Exception ex)
{
	System.out.println(ex);
}
%>
<html>
 <body>
  <h2>Product record has been saved successfully</h2>
  <a href='insert.html' style='font-size:20px'>Save more records |</a>
  <a href='/productinfo-jsp' style='font-size:20px'>Home page</a>
 </body>
</html>