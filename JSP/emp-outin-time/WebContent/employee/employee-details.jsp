<%@page import="java.sql.*"%>
<%@ include file='../navbar.jsp' %>
<html>
 <body>
    <%
    PreparedStatement ps=(PreparedStatement)application.getAttribute("empdetails");
    ps.setString(1,request.getParameter("eid"));
    ResultSet rst=ps.executeQuery();
    rst.next();
    %>
     <table class='ta' style='width:50%' border='3'>
	   <tr style='background-color:orange;color:white'>
	    <td colspan="2" align="center" class='la pd'>Employee Details</td>
	   </tr>
	   <tr>
	    <th align="left">Employee Id</th>
	    <td class='pd'><%=rst.getString(1)%></td>
	   </tr>
	   <tr>
	    <th align="left">Employee name</th>
	     <td class='pd'><%=rst.getString(2)%></td>
	   </tr>
	   <tr>
	    <th align="left">Employee Department</th>
	     <td class='pd'><%=rst.getString(3)%></td>
	   </tr>
	   <tr>
	    <th align="left">Employee photo</th>
	     <td class='pd'>
	     	<img src='../photos/<%=rst.getString(4)%>' width='140px' height="120px">
	     </td>
	   </tr>
	 </table>
	 <div class='dvv'>
	    <button class='btr' onclick='history.back()'>Back</button>
	 </div>
 </body>
</html>    