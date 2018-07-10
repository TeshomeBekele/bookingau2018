<%-- 
    Document   : ordering
    Created on : May 8, 2018, 3:19:42 PM
    Author     : Mame
--%>
<%@page import="com.au.bookingroom.Regg"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Ambo University Class Room</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body bgcolor="blue">
        <div class="container" style="background-color:palevioletred"> <h1><center><img src="logo.png" width="100" height="100" aliggnment=left> &nbsp; &nbsp; &nbsp; &nbsp; Ambo University Class Room Scheduling &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <img src="logo.png" width="100" height="100" aliggnment=left></h1> 
           <center>  <a href="http://localhost:8080/BookingRoom/index.jsp"><input type="submit" value="Home"></a> </a>
            <a href="http://localhost:8080/BookingRoom/about.jsp"><input type="submit" value="About Us"></a>
            <a href="http://localhost:8080/BookingRoom/ordering.jsp"><input type="submit" value="Class Ordering"></a>
        <a href="http://localhost:8080/BookingRoom/unassignedclass.jsp"><input type="submit" value="Chech Unassigned Class"></a>
         <a href="http://localhost:8080/BookingRoom/classassined.jsp"><input type="submit" value="Checking Assigned Class"></a>
          <a href="http://localhost:8080/BookingRoom/Registration List.jsp"><input type="submit" value="Registration List"></a>
         <a href="http://localhost:8080/BookingRoom/delete%20record.jsp"><input type="submit" value="Cancel Ordered class"></a>
          </div><hr size=1 width="75%"> <center>      
    <tr>   <div> 
        <table border="1" center width="400" bgcolor="#f1f1f1"><p>
            <tr>
                <td align="center"><p>
        <form id="form1" name="form1" method="post" action="Registration.jsp">
 User ID <input type="text" name="userid"><p>
 First Name: <input type="text" name="firstname"><p>
Last Name <input type="text" name="lastname"><p>
Address  <input type="text" name="address"><p>
Phone Number <input type="text" name="phone"value="---"><p>
E-mail  <input type="text" name="email"><p>      
                <div> Sex
                   <select name="sex" sex="select">
                       <center>
           <option value="---">Select Sex </option>
  <option>M</option>
  <option>F</option>
                       </center></select><p>
<div> 
Date <input type="text" name="date">
<br><font color="blue">            
  <br>
</div>
<input type="submit" name="submit" id="button" value="Register" /><p>
        </form>
                </td>
            </tr>
        </table>
  
 </body>
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
	 String v4=request.getParameter("address");
         String v5=request.getParameter("phone");
	 String v6=request.getParameter("email");
          String v7=request.getParameter("sex");
         String v8=request.getParameter("date");
	 

Regg rr=new Regg();
rr.rr();
rr.registration(v1, v2, v3, v4, v5, v6, v7, v8);

%>
<% out.println("<script>alert('You are Registered !!!!')</script>"); %>
<% }}}%>

<center>
    <div class="container" style="background-color:palevioletred"> <hr>
  <table> <tr><td width="600"><h3><center>Address:<br> Web site:  www.au.edu    Email: au@gmail.com   P.O.Box 217</td>
                      <th width="200"><a href="http://localhost:8080/BookingRoom/about.jsp">About Us</a><p>Contact <p>Vision & Mission </th>
                            </tr></table>     
   </div>  
</html>



