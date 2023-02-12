<%@page import="java.sql.*"%>
<html>
 <body>
<%
String v1=request.getParameter("pid");
try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection cn=DriverManager.getConnection("jdbc:mysql://localhost/wjsp5","root","mysql");
	String sql="delete from productinfo where pid=?";
	PreparedStatement ps=cn.prepareStatement(sql);
	ps.setString(1,v1);
	int n=ps.executeUpdate();
	if(n>=1)
	{
		%>
		<h2 style='color:red'>Product record has been deleted successfully</h2>
		<%
	}
	else
	{
		%>
		 <h2 style='color:red'>Product record does not exist</h2>
		<%
	}
}
catch(Exception ex)
{
	System.out.println(ex);
}
%>
  <a href='delete.html' style='font-size:20px'>Delete more records |</a>
  <a href='/productinfo-jsp' style='font-size:20px'>Home page</a>
 </body>
</html>