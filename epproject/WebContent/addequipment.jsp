<%@page import="java.sql.*" %>
<%@page import="java.io.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1"> 
<title>Add equipment</title>
</head>
<body>
<%
String eid= request.getParameter("eid");
String ename= request.getParameter("ename");
String ehname= request.getParameter("ehname");
String enumber= request.getParameter("enumber");
try{
	Connection con = null;
	Class.forName("oracle.jdbc.driver.OracleDriver");
	System.out.println("Driver Class Loaded ");
	con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","root");
	System.out.println("Connection Established");
PreparedStatement pstmt = con.prepareStatement("insert into equipments values(?,?,?,?) ");
pstmt.setString(1,eid);
pstmt.setString(2,ename);
pstmt.setString(3,ehname);
pstmt.setString(4,enumber);
int n=pstmt.executeUpdate();
if(n>0){
  %>
  <h3 align=center>Equipment Added Successfully</h3><br>
  <a href="addequipment.html">Add another Equipment</a>
  
  <% 
}
else{
%>
<h3 align=center>failed to add equipment</h3><br>
<a href="addequipment.html">Try adding again</a>
<%
} 
}
catch(Exception e){
  System.out.println(e);
  
}


%>
