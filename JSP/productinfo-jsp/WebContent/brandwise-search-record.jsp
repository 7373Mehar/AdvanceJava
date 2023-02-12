<%@page import="java.sql.*"%>
<html>
 <body>
<%
try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection cn=DriverManager.getConnection("jdbc:mysql://localhost/wjsp5","root","mysql");
	String sql="select * from productinfo where brand=?";
	PreparedStatement ps=cn.prepareStatement(sql);
	ps.setString(1,request.getParameter("brand"));
	ResultSet rst=ps.executeQuery();
	if(!rst.next())
	{
		%>
		 <h2 style='color:red'>No product found for given brand</h2>
		 <a href='/productinfo-jsp' style='font-size:20px'>Home page</a>
		<%
		return;
	}
	else
	{
		%>
		<table border='1' style='border-collapse: collapse;font-size:20px;width:45%'>
		 <tr>
		  <th>Product id</th><th>Product name</th><th>Product brand</th><th>Product price</th>
		 </tr>
		 <%
		 do
		 {
			 %>
			 <tr>
			  <td><%=rst.getString(1)%></td>
			  <td><%=rst.getString(2)%></td>
			  <td><%=rst.getString(3)%></td>
			  <td><%=rst.getString(4)%></td>
			 </tr>
			 <%
		 }while(rst.next());
		 %>
		</table>
		<%
	}
}
catch(Exception ex)
{
	System.out.println(ex);
}
%>
  <br><br>
  <a href='/productinfo-jsp' style='font-size:20px'>Home page</a>
 </body>
</html>