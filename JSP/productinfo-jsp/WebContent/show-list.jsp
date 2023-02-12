<%@page import="java.sql.*"%>
<html>
 <body>
<%
try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection cn=DriverManager.getConnection("jdbc:mysql://localhost/wjsp5","root","mysql");
	String sql="select * from productinfo";
	Statement st=cn.createStatement();
	ResultSet rst=st.executeQuery(sql);
	%>
	<table border='1' style='border-collapse: collapse;font-size:20px;width:45%'>
	 <tr>
	  <th>Product id</th><th>Product name</th><th>Product brand</th><th>Product price</th>
	 </tr>
	 <%
	 while(rst.next())
	 {
		 %>
		 <tr>
		  <td><%=rst.getString(1)%></td>
		  <td><%=rst.getString(2)%></td>
		  <td><%=rst.getString(3)%></td>
		  <td><%=rst.getString(4)%></td>
		 </tr>
		 <%
	 }
	 %>
	</table>
	<%
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