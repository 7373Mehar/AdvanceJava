<%@include file="navbar.jsp" %>
<html>
  <body onload="makeActive('list')">
   <table border='1' class='tar' style='font-size:1.6vw'>
    <tr style='background-color: orange;color:white;'>
     <th colspan="6">Customer List</th>
    </tr>
    <tr class='tr'>
     <th align="left">Customer id</th><th align="left">First name</th><th align="left">Last name</th>
     <th align="left">City</th><th align="left">Phone</th><th align="left">Email</th>
    </tr>
    <%
    Statement st=(Statement)application.getAttribute("st");
    ResultSet rst=st.executeQuery("select * from customerinfo");
    while(rst.next())
    {
    	%>
    	<tr class='tr'>
    	 <td><%=rst.getString(1)%></td><td><%=rst.getString(2)%></td>
    	 <td><%=rst.getString(3)%></td><td><%=rst.getString(4)%></td>
    	 <td><%=rst.getString(5)%></td><td><%=rst.getString(6)%></td>
    	</tr>
    	<%
    }
    %>
   </table>
  </body>
</html>