<%@ page import="java.sql.*" %>

<html>
    <head>
        <title>View equipment</title>

  
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <style>
  .fakeimg {
    height: 200px;
    background: url("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-MLpS8sCni676Pnl4U4e33It860Un1vuNAg&usqp=CAU");
  }
  .fakeimg1 {
    height: 100px;
    background: url("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4bIlVTstoLF7NsUAqfxcv8eyWNbvmIyB7lg&usqp=CAU");
  }
  .fakeimg2 {
    height: 100px;
    background: url("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSXmC4RxEvjJD-ynTIKXfDT5EJTF_tyLfd-WQ&usqp=CAU");
  }
  body {
  display: grid;
  height: 50%;
  width: 100%;
  
  background: -webkit-linear-gradient(left, #003366,#004080,#0059b3
, #0073e6);
}
  </style>
</head>
<body>
  <body bgcolor="Gold">
        <br><br>
<table align=center width="800">
<tr align=center bgcolor="Aqua" border=1>
<div class="jumbotron text-center" style="margin-bottom:0" >
  <h1 style="color:red">WELCOME TO HEALTH CARE LOGISTICS</h1>
  <p style="color:orange">your small friend indeed</p> 
</div>

<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <a class="navbar-brand" href="http://localhost:8003/epproject/homepage.html">HOME</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="collapsibleNavbar">
    <ul class="navbar-nav">
    <li class="nav-item">
        <a style="color:red" class="nav-link" href="managerlogin.html">MANAGER</a>
      </li>
    <li class="nav-item">
        <a style="color:red" class="nav-link" href="viewequipment.jsp">VIEW EQUIPMENT</a>
      </li>
       <li class="nav-item">
        <a style="color:red" class="nav-link" href="viewtest.jsp">VIEW TEST</a>
      </li>
      
      <li class="nav-item">
        <a style="color:red" class="nav-link" href="aboutus.html">ABOUT US
        </a>
      </li>    
    </ul>
  </div>  
</nav>

<th style="color:purple">EquipmentName</th>
<th style="color:purple">HospitalName</th>
<th style="color:purple">HospitalPhoneNumber</th>

</tr>
<%

Connection con = null;
Class.forName("oracle.jdbc.driver.OracleDriver");
System.out.println("Driver Class Loaded ");
con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","root");
System.out.println("Connection Established");
 
 PreparedStatement pstmt = con.prepareStatement("select * from equipments");
ResultSet rs = pstmt.executeQuery();
 while(rs.next())
{
  %>
  <tr align=center bgcolor="Crimson" >
     <td><%=rs.getString("ename")%></td>
    <td><%=rs.getString("ehname")%></td>
  <td><%=rs.getString("enumber")%></td>
  <td>
  </td>
  </tr>
  <%
}

%>