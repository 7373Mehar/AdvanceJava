<%@page import="java.time.LocalDate"%>
<%@ include file="../navbar.jsp" %>
<html>
  <%
  LocalDate dt=LocalDate.now();
  String val=request.getParameter("eid");
  String eid=val.substring(val.indexOf('(')+1,val.length()-1);
  %>
  <body onload="makeActive('empwise')">
  <div class='dvv'>
    <label class='lahu'>View date wise report of <font color='red'><%=val%></font></label>
  </div>
   <table class='ta'>
    <tr>
     <td class='pd'>
      <form action='current-date-report.jsp' method="post">
       <input type='hidden' name='eid' value='<%=eid%>'>
       <table class='cdta'>
        <tr>
         <td>Current date</td>
         <td align="right"><button class='cdbt'>GO</button></td>
        </tr>
       </table>
      </form>
     </td>
    </tr>
    <tr>
     <td class='pd'>
      <form action='any-date-report.jsp' method="post">
      <input type='hidden' name='eid' value='<%=eid%>'>
       <table class='cdta'>
        <tr>
         <td>Any date</td>
         <td><input type='date' class='tb' name='date' max="<%=dt%>" required></td>
         <td align="right"><button class='cdbt'>GO</button></td>
        </tr>
       </table>
      </form>
     </td>
    </tr>
    <tr>
     <td class='pd'>
      <form action="date-between-report.jsp" method="post">
      <input type='hidden' name='eid' value='<%=eid%>'>
       <table class='cdta'>
        <tr>
         <td>Date between&nbsp;&nbsp;&nbsp;&nbsp;</td>
         <td><input type='date' class='tb' id='date1' max="<%=dt%>" name="date1" required></td>
         <td><input type='date' class='tb' id='date2' max="<%=dt%>" name="date2" required></td>
         <td align="right"><button class='cdbt' onclick='return compareDate()'>GO</button></td>
        </tr>
       </table>
      </form>
     </td>
    </tr>
   </table>
 </body>
</html>