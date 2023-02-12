<%@page import="java.time.LocalDate"%>
<%@page import="java.sql.*"%>
<%@ include file='../navbar.jsp' %>
<html>
 <body onload='makeActive("datewise")'>
 <%
 String date=request.getParameter("date");
 PreparedStatement ps=(PreparedStatement)application.getAttribute("reportad");
 ps.setObject(1,LocalDate.parse(date));
 ResultSet rst=ps.executeQuery();
 %>
 <div class='dvv'>
     <label class='hdu'>Report on date <%=date%></label>
  </div>
  <div class='container'>
   <div class='card col-md-12 mx-auto'>
    <div class='card-body'>
     <%if(!rst.next()){%>
       <div class='dv'>
        <label class='la' style='color:red'>No employee had gone outside on date <%=date%></label>
       </div>
     <%}
     else
     {
       %>
       <div class='table scrollit'>
  		<table class='table table-hover'>
      	  <thead>
       		<tr>
        		<th class='las'>S.No</th><th class='las'>Empid</th>
        		<th class='las'>Out Time</th><th class='las'>In Time</th>
        		<th class='las'>Total Time</th><th class='las'>Date</th>
       		</tr>
      	   </thead>
           <tbody>
           <%
      	   int sn=0;
	       do
      		{
      		String eid=rst.getString(2);
      		%>
            <tr>
              <td class='las'><%=++sn%></td>
              <td class='las'>
           	    <a href='../employee/employee-details.jsp?eid=<%=eid%>' style='text-decoration:underline;' title='Click to see employee details'><%=eid%></a>
              </td>
    	      <td class='las'><%=rst.getString("outtime")%></td>
    	      <td class='las'><%=rst.getString("intime")%></td>
    	      <td class='las'><%=rst.getString("totaltime")%></td>
    	      <td class='las'><%=rst.getString("date")%></td>
    	     </tr>
           <%}
            while(rst.next());%>	
      </tbody>
     </table>
    </div>
    <%}%>
  </div>
 </div>
</div>
<div class='dvv'>
   <button class='btr' onclick='history.back()'>Back</button>
 </div>
</body>
</html>