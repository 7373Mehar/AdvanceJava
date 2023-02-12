<%@page import="java.sql.*"%>
<%
	String val=request.getParameter("eid");
	String eid=val.substring(val.indexOf('(')+1,val.length()-1);
    PreparedStatement ps=(PreparedStatement)application.getAttribute("empdetails");
    ps.setString(1,eid);
    ResultSet rst=ps.executeQuery();
    rst.next();
    String file=rst.getString(4);
%>
<img src="../photos/<%=file%>" height="120px" width="130px">
