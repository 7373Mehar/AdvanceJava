<%@page import="java.time.LocalDate"%>
<%@page import="java.time.LocalTime"%>
<%@ include file="../navbar.jsp" %>
<%
String val=request.getParameter("eid");
String eid=val.substring(val.indexOf('(')+1,val.length()-1);
LocalDate ld=LocalDate.now();
PreparedStatement ps=(PreparedStatement) application.getAttribute("outsave");
ps.setString(1,eid);
LocalTime lt=LocalTime.now();
ps.setString(2,lt.getHour()+":"+lt.getMinute()+":"+lt.getSecond());
ps.setString(3,"Not in yet");
ps.setString(4,"Not applicable");
ps.setObject(5,ld);
ps.executeUpdate();
%>
<jsp:include page="../update-outstatus.jsp">
 <jsp:param value="out" name="status"/>
 <jsp:param value="<%=eid%>" name="eid"/>  
</jsp:include>
<html>
 <body onload="makeActive('out')">
  <div class='dv'>
    <label class='lam'>Out time of <font color='red'><%=val%></font> has been recorded</label>
  </div>
 </body>
</html>