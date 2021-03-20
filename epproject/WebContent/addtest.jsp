<%@page import="java.sql.*" %>
<%@page import="java.io.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1"> 
<title>ADD TEST</title>
</head>
<body>
<%
String tid= request.getParameter("tid");
String tname= request.getParameter("tname");
String thname= request.getParameter("thname");
String tnumber= request.getParameter("tnumber");
try{
	Connection con = null;
	Class.forName("oracle.jdbc.driver.OracleDriver");
	System.out.println("Driver Class Loaded ");
	con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","root");
	System.out.println("Connection Established");
PreparedStatement pstmt = con.prepareStatement("insert into testvalues values(?,?,?,?) ");
pstmt.setString(1,tid);
pstmt.setString(2,tname);
pstmt.setString(3,thname);
pstmt.setString(4,tnumber);
int n=pstmt.executeUpdate();
if(n>0){
  %>
  <h3 align=center>test Added Successfully</h3><br>
  <a href="addtest.html">Add another test</a>
  
  <% 
}
else{
%>
<h3 align=center>failed to add test</h3><br>
<a href="addtest.html">Try adding again</a>
<%
} 
}
catch(Exception e){
  System.out.println(e);
  
}


%>
