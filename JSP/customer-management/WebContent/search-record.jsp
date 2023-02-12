<html>
 <body onload="makeActive('search')">
  <%
  String cid=request.getParameter("cid");
  PreparedStatement ps=(PreparedStatement)application.getAttribute("search");
  ps.setString(1,cid);
  ResultSet rst=ps.executeQuery();
  if(rst.next())
  {
	  %>
	  <%@include file="navbar.jsp" %>
	  <table border='1' class='tar' style='width:55%'>
	   <tr style='background-color:orange;color:white'>
	    <th colspan="2">Customer Details</th>
	   </tr>
	   <tr>
	    <th align="left">Customer Id</th>
	    <td><%=cid%></td>
	   </tr>
	    <tr>
	    <th align="left">Customer first name</th>
	    <td><%=rst.getString(2)%></td>
	   </tr>
	    <tr>
	    <th align="left">Customer last name</th>
	    <td><%=rst.getString(3)%></td>
	   </tr>
	    <tr>
	    <th align="left">Customer city</th>
	    <td><%=rst.getString(4)%></td>
	   </tr>
	    <tr>
	    <th align="left">Customer phone number</th>
	    <td><%=rst.getString(5)%></td>
	   </tr>
	    <tr>
	    <th align="left">Customer email id</th>
	    <td><%=rst.getString(6)%></td>
	   </tr>
	  </table>
	  <%
  }
  else
  {
	  %>
	  <jsp:include page="search.jsp" />
	  <div class='dvv'>
	   <label style='color:red' class='la'>Customer with id <%=cid%> not found</label>
	  </div>
	  <%
  }
  %>
 </body>
</html>