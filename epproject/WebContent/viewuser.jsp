<%@ page import="java.sql.*" %>

<html>
    <head>
        <title>View Users</title>
    </head>
    <body bgcolor="Gold">
        <br><br>
<table align=center width="800">
<tr align=center bgcolor="Aqua" border=1>
<th style="color:purple">EmailID</th>
<th style="color:purple">Occupation</th>
<th style="color:purple">age</th>
<th style="color:purple">Password</th>

</tr>
<%

Connection con = null;
Class.forName("oracle.jdbc.driver.OracleDriver");
System.out.println("Driver Class Loaded ");
con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","root");
System.out.println("Connection Established");
 
 PreparedStatement pstmt = con.prepareStatement("select * from registrations");
ResultSet rs = pstmt.executeQuery();
 while(rs.next())
{
  %>
  <tr align=center bgcolor="Crimson" >
  <td><%=rs.getString("EMAILID")%></td>
   <td><%=rs.getString("Occupation")%></td>
    <td><%=rs.getString("age")%></td>
  <td><%=rs.getString("PWD")%></td>
  <td>
  </td>
  </tr>
  <%
}

%>