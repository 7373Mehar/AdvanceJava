<%@include file="navbar.jsp" %>
<html>
 <body onload="makeActive('insert')">
  <%
  PreparedStatement ps=(PreparedStatement)application.getAttribute("insert");
  ps.setString(1,request.getParameter("cid"));
  ps.setString(2,request.getParameter("firstname"));
  ps.setString(3,request.getParameter("lastname"));
  ps.setString(4,request.getParameter("city"));
  ps.setString(5,request.getParameter("phone"));
  ps.setString(6,request.getParameter("email"));
  ps.executeUpdate();
  %>
  <div class='dv'>
    <label class='lah' style='color:green'>Customer record has been saved/inserted successfully</label>
  </div>
 </body>
</html>