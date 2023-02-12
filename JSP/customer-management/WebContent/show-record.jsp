<html>
 <body onload="makeActive('update')">
  <%
  String cid=request.getParameter("cid");
  PreparedStatement ps=(PreparedStatement)application.getAttribute("search");
  ps.setString(1,cid);
  ResultSet rst=ps.executeQuery();
  if(rst.next())
  {
	  %>
	  <%@include file="navbar.jsp" %>
	  <form action="update-record.jsp" method="post">
	  <table border='1' class='tar' style='width:55%' cellpadding='5px'>
	   <tr style='background-color:orange;color:white'>
	    <th colspan="2">Customer Details</th>
	   </tr>
	   <tr>
	    <th align="left">Customer Id</th>
	    <td><input type='hidden' value='<%=cid%>' name='cid'><%=cid%></td>
	   </tr>
	    <tr>
	    <th align="left">Edit first name</th>
	    <td><input type='text' value='<%=rst.getString(2)%>' name='firstname' class='tb'></td>
	   </tr>
	    <tr>
	    <th align="left">Edit last name</th>
	    <td><input type='text' value='<%=rst.getString(3)%>' name='lastname' class='tb'></td>
	   </tr>
	    <tr>
	    <th align="left">Edit city</th>
	    <td><input type='text' value='<%=rst.getString(4)%>' name='city' class='tb'></td>
	   </tr>
	    <tr>
	    <th align="left">Edit phone number</th>
	    <td><input type='text' value='<%=rst.getString(5)%>' name='phone' class='tb'></td>
	   </tr>
	    <tr>
	    <th align="left">Edit email id</th>
	    <td><input type='text' value='<%=rst.getString(6)%>' name='email' class='tb'></td>
	   </tr>
	   <tr>
	    <td colspan="2" align="right">
	      <button class='bt' style='background-color:black'>Update Record</button>
	    </td>
	   </tr>
	  </table>
	  </form>
	  <%
  }
  else
  {
	  %>
	  <jsp:include page="edit.jsp" />
	  <div class='dvv'>
	   <label style='color:red' class='la'>Customer with id <%=cid%> not found</label>
	  </div>
	  <%
  }
  %>
 </body>
</html>