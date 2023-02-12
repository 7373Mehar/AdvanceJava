<%@ include file="../navbar.jsp" %>
<html>
 <body onload="makeActive('empwise')">
 <form action="choose-date.jsp">
  <div class='dv'>
   <label class='hdu'>View employee wise report</label>
  </div>
 <div class='dvv' id='photo'>
  </div>
  <div class='dvv'>
   <select class='la' id="eid" name="eid" onchange="showPhoto()">
     <option value="-1">Select employee</option>
     <%
     Statement st=(Statement)application.getAttribute("list");
     ResultSet rst=st.executeQuery("select * from employeeinfo");
     while(rst.next())
     {
    	 String eid=rst.getString(1);
    	 String name=rst.getString(2);
    	 %>
    	 <option><%=name%>(<%=eid%>)</option>
    	 <%
     }
     %>
   </select> 
  </div>
  <div class='dvv'> 
   	<button class='btn btn-primary' onclick='return checkEmployee()'>Submit</button>
  </div>
  <div class='dvv' id='msg'>
  </div> 
 </form> 
 </body>
</html>