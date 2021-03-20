 <%@page import="java.sql.*" %>
<%@page import="java.io.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1"> 
<meta http-equiv="Refresh" content="1;url=loginpage.html">
<title>register</title>
</head>
<body>
<%
String userid= request.getParameter("EmailID");
String Occupation= request.getParameter("Occupation");
String age= request.getParameter("age");
String pwd= request.getParameter("pwd");
String cpwd= request.getParameter("cpwd");
try{

Connection con = null;
Class.forName("oracle.jdbc.driver.OracleDriver");
System.out.println("Driver Class Loaded ");
con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","root");
System.out.println("Connection Established");
PreparedStatement pstmt = con.prepareStatement("insert into registrations values(?,?,?,?,?) ");
pstmt.setString(1,userid);
pstmt.setString(2,Occupation);
pstmt.setString(3,age);
pstmt.setString(4,pwd);
pstmt.setString(5,cpwd);

int n=pstmt.executeUpdate();
if(n>0){
  %>
  <h3 align=center>Registered Successfully</h3><br>
  
  <% 
}
else{
%>
<h3 align=center>Registration failed</h3><br>
<a href="registration.tml">Try register again</a>
<%
} 
}
catch(Exception e){
  System.out.println(e);
  
}
%>
