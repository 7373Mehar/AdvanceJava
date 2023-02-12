<%@include file="navbar.jsp" %>
<html>
  <body onload="makeActive('insert')">
  <form action="save-record.jsp" method="post">
   <table class='ta'>
    <tr>
      <td class='pd'>Enter customer id<span> *</span></td>
      <td class='pd'><input type='text' name='cid' class='tb' required></td>
    </tr>
    <tr>
      <td class='pd'>Enter first name<span> *</span></td>
      <td class='pd'><input type='text' name='firstname' class='tb' required></td>
    </tr>
    <tr>
      <td class='pd'>Enter last name<span> *</span></td>
      <td class='pd'><input type='text' name='lastname' class='tb' required></td>
    </tr>
    <tr>
      <td class='pd'>Enter city<span> *</span></td>
      <td class='pd'><input type='text' name='city' class='tb' required></td>
    </tr>
    <tr>
      <td class='pd'>Enter phone number<span> *</span></td>
      <td class='pd'><input type='text' name='phone' class='tb' required></td>
    </tr>
    <tr>
      <td class='pd'>Enter email id<span> *</span></td>
      <td class='pd'><input type='text' name='email' class='tb' required></td>
    </tr>
    <tr>
      <td class='pd' colspan="2" align="right">
       <button class='bt' onclick="show()">Save Record</button>
      </td>
    </tr>
   </table>
   </form>
  </body>
</html>