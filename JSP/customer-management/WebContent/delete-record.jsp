<%@page import="java.sql.PreparedStatement"%>
<html>
 <body onload="makeActive('delete')">
 <jsp:include page="delete.jsp" />
 <div class='dvv'>
  <%
  String cid=request.getParameter("cid");
  PreparedStatement ps=(PreparedStatement)application.getAttribute("delete");
  ps.setString(1,cid);
  int n=ps.executeUpdate();
  if(n>=1)
  {
	  %>
	  <label style='color:red' class='la'>Customer record with id <%=cid%> has been deleted</label>
	  <%
  }
  else
  {
	  %>
	   <label style='color:red' class='la'>Customer with id <%=cid%> does not exist</label>
	  <%
  }
  %>
  </div>
 </body>
</html>