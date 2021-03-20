<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta http-equiv="Refresh" content="5,url=loginpage.html">
<title>registration</title>
</head>
<body>
<%@ page import="java.sql.*" %>
<%

String email = request.getParameter("EmailID");
String pwd = request.getParameter("password");

try
{
	Connection con = null;
	Class.forName("oracle.jdbc.driver.OracleDriver");
	System.out.println("Driver Class Loaded ");
	con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","root");
	System.out.println("Connection Established");  
  
    
    PreparedStatement pstmt = con.prepareStatement("select * from registrations where EMAILID=? and PWD=?");
    pstmt.setString(1,email);
    pstmt.setString(2,pwd);
    ResultSet rs = pstmt.executeQuery();
    if(rs.next())
    {
     
     response.sendRedirect("homepagereal.html");
    }
    else
    {
      %>
      <script>
      alert("Invalid Login Try again")
      </script>
      <%
         }
}
catch(Exception e)
{
  out.println(e);
}



%>
</body>
</html>