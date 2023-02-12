<%@page import="java.sql.*"%>
<html>
 <body>
<%
String v1=request.getParameter("pid");
try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection cn=DriverManager.getConnection("jdbc:mysql://localhost/wjsp5","root","mysql");
	String sql="select * from productinfo where pid=?";
	PreparedStatement ps=cn.prepareStatement(sql);
	ps.setString(1,v1);
	ResultSet rst=ps.executeQuery();
	if(rst.next())
	{
		%>
		<table border='1' style='border-collapse: collapse;font-size:20px;width:40%'>
		 	<tr style='background-color: orange;color:white'>
		  		<th colspan="2" align="center">Product Details</th>
		 	</tr>
		 	<tr><th align="left">Product Id</th><td><%=rst.getString(1)%></td></tr>
		 	<tr><th align="left">Product name</th><td><%=rst.getString(2)%></td></tr>
		 	<tr><th align="left">Product brand</th><td><%=rst.getString(3)%></td></tr>
		 	<tr><th align="left">Product price</th><td><%=rst.getString(4)%></td></tr>
		</table>
		<%
	}
	else
	{
		%>
		 <h2 style='color:red'>Product record not found</h2>
		<%
	}
}
catch(Exception ex)
{
	System.out.println(ex);
}
%>
  <a href='search.html' style='font-size:20px'>Search more records |</a>
  <a href='/productinfo-jsp' style='font-size:20px'>Home page</a>
 </body>
</html>