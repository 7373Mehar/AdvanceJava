<%@page import="java.sql.*" %>
<html>
 <%
 String pa="/emp-outin-time";
 %>
 <head>
  <script src='<%=pa%>/JS/script.js'></script>
  <link href='<%=pa%>/CSS/style.css' rel='stylesheet'>
  <link href='<%=pa%>/CSS/bootstrap.min.css' rel='stylesheet'>
 </head>
 <body bgcolor='cyan'>
   <hr style='border:2px solid teal'>
    <nav class='navbar navbar-expand navbar-light bg-dark'>
     <ul class='nav nav-pills mx-auto'>
      <li><a id="home" class='btra' href='<%=pa%>'>Home</a>
      <li><a id='add' class='btra' href='<%=pa%>/employee/insert.jsp'>Add employee</a>
      <li><a id='out' class='btra' href='<%=pa%>/outtime/employee-in-name-list.jsp'>Time Out</a>
      <li><a id='in' class='btra' href='<%=pa%>/intime/employee-out-name-list.jsp'>Time In</a>
      <li><a id='datewise' class='btra' href='<%=pa%>/datewise-report/choose-date.jsp'>Date wise report</a>
      <li><a id='empwise' class='btra' href='<%=pa%>/employeewise-report/employee-name-list.jsp'>Employee wise report</a>
     </ul>
    </nav>
   <hr style='border:2px solid teal'>
 </body>
</html>