<%@page import="java.time.LocalDate"%>
<%@ include file="../navbar.jsp" %>
<html>
  <%
  LocalDate dt=LocalDate.now();
  %>
  <body onload="makeActive('datewise')">
  <div class='dvv'>
    <label class='lahu'>View date wise report</label>
  </div>
   <table class='ta'>
    <tr>
     <td class='pd'>
      <form action='current-date-report.jsp' method="post">
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