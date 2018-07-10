<%-- 
    Document   : ordering
    Created on : May 8, 2018, 3:19:42 PM
    Author     : Mame
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ambo University Class Room </title>
    </head>
    <body>
                                <body bgcolor="palevioletred">
        <div class="container" style="background-color:palevioletred"> <h1><center><img src="logo.png" width="100" height="100" aliggnment=left> &nbsp; &nbsp; &nbsp; &nbsp; Ambo University Class Room Ordering Form &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <img src="logo.png" width="100" height="100" aliggnment=left></h1> 
           <center>  <a href="http://localhost:8080/BookingRoom/index.jsp"><input type="submit" value="Home"></a> </a>
            <a href="http://localhost:8080/BookingRoom/about.jsp"><input type="submit" value="About Us"></a>
          <a href="http://localhost:8080/BookingRoom/unassignedclass.jsp"><input type="submit" value="Chech Unassigned Class"></a>
         <a href="http://localhost:8080/BookingRoom/ordering.jsp"><input type="submit" value="Class Ordering"></a>
          <a href="http://localhost:8080/BookingRoom/classassined.jsp"><input type="submit" value="Checking Assigned Class"></a>
          </div> <center> <hr size=1 width="75%">
  <table align="center">
            <tr>
                                <td>
 <center>       <html>
<head>
<title>Class Ordering Form</title>
<script>
var userName = prompt("Hi! What's your name?");
</script>
</head>
<body>
<center><center>
</center>
<h3>
<script>
document.write("Welcome ");
document.write(userName);
document.write(" Please click this button to the order class ");
document.write("!!");
document.close();
</script>
</h3>
<hr>
</body>
</html>    
        <table border="1" width="400" bgcolor="#f1f1f1"> 
            <tr><td align="center">
                   
                        <br><font color="blue">
           
                        <a href="http://localhost:8080/BookingRoom/ordering.jsp"><input type="submit" name="submit" id="button" value="Order Class Room Here"/></a><p>
        </form>
 </body>            
            
                </td>
            </tr>
   
        </table></center>
                </td>
                <td>
 <img src="arrow icon.gif" width="150" height="150" aliggnment=left>
                </td>
                <td>
                     <form id="form1" name="form1" method="post" action="user creation form.jsp">
                         <p align="center"><font size="+2">Teachers User Creation </font></p>
                         <p align="center"><font size="+2">For Administrator only!!! </font></p>
      <div> Customer Type
      <select name="Admin" admin="admin">
                       <center>
   
           <option value="">Admin </option>
         <option value="">Teacher </option>
 
                       </center></select><p></p>           
    <p>
      <label>
        User Name
        <input type="text" name="username" id="textfield" />
        <br />
        <br />
        Password &nbsp;
        <input type="password" name="password" id="textfield2" />
        <br />
        <br /> 
        &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
        <input type="submit" name="button" id="button" value="Login" />   
</p>
    </td>
    </table>  
              <br><br><br><br><br><br>         
              <center>
    <div class="container" style="background-color:palevioletred"> <hr>
  <table> <tr><td width="600"><h3><center>Address:<br> Web site:  www.au.edu    Email: au@gmail.com   P.O.Box 217</td>
                      <th width="200"><a href="http://localhost:8080/BookingRoom/about.jsp">About Us</a><p>Contact <p>Vision & Mission </th>
                            </tr></table>     
   </div>  
        <%@page import="java.sql.*" %>
<%@page import="java.lang.*" %>
<%@page import="java.util.Date" %>


<%
      if("POST".equalsIgnoreCase(request.getMethod())){
        if(request.getParameter("submit")!=null){
            if(request.getParameter("submit")!="submit"){
 
        String st="8:00AM",et="6:00PM",s="Free";
	 String v1=request.getParameter("userid");
	 String v2=request.getParameter("firstname");
         String v3=request.getParameter("lastname");
	 String v4=request.getParameter("buildingno");
          String v5=request.getParameter("room");
         String v6=request.getParameter("year");
         String v7=request.getParameter("date");
         String v8=request.getParameter("time");
         String v9=request.getParameter("gender");
%>
<% out.println("<script>alert('You are Ordered Classes!!!!')</script>"); %>
<% }}}%>

<%@page import="java.sql.*" %>
<%@page import="java.lang.*" %>
<%@page import="java.util.Date" %>

<%
    if("POST".equalsIgnoreCase(request.getMethod())){
        if(request.getParameter("submit")!=null){
            if(request.getParameter("submit")!="submit"){
    
    Connection con=null;
  Statement stmt=null;
  String connection=("jdbc:mysql://localhost:3306/bookingroom");
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection(connection,"root","");

	 String type=request.getParameter("type");
	 String username=request.getParameter("username");
         String password=request.getParameter("password");
         String sql="Select * from login where usertype='"+type+"' and username='"+username+"' and password='"+password+"'";
	ResultSet rs=stmt.executeQuery(sql);
	 if(rs.next())
         out.println("<script>alert('welcome !!!!')</script>");
         else
         out.println("<script>alert('please enter correct info !!!!')</script>");
            }}}
%>

    </body>
</html>
