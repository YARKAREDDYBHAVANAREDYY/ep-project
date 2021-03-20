<% 
String uemail=request.getParameter("username"); 
String password=request.getParameter("pass"); 
session.setAttribute("suid", uemail);
if(uemail.equals("manager") && password.equals("project"))
{
 response.sendRedirect("managerpage.html");
}
else
{
 response.sendRedirect("managerfail.html");
}
%> 