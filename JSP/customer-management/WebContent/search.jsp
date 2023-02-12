<%@include file="navbar.jsp" %>
<html>
  <body onload="makeActive('search')">
  <form action="search-record.jsp" method="post">
   <table class='ta'>
    <tr>
      <td class='pd'>Enter customer id<span> *</span></td>
      <td class='pd'><input type='text' name='cid' class='tb' style='width:17vw' required></td>
      <td class='pd'><button class='bt'>Search Record</button></td>
    </tr>
   </table>
   </form>
  </body>
</html>