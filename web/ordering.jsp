<%-- 
    Document   : ordering
    Created on : May 8, 2018, 3:19:42 PM
    Author     : Mame
--%>

<%@page import="com.au.bookingroom.Regg"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ambo University Class Room </title>
    </head>
    <body>
                                <body bgcolor="Khaki">
        <div class="container" style="background-color:palevioletred"> <h1><center><img src="logo.png" width="100" height="100" aliggnment=left> &nbsp; &nbsp; &nbsp; &nbsp; Ambo University Class Room Ordering Form &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <img src="logo.png" width="100" height="100" aliggnment=left></h1> 
           <center>  <a href="http://localhost:8080/BookingRoom/index.jsp"><input type="submit" value="Home"></a> </a>
            <a href="http://localhost:8080/BookingRoom/about.jsp"><input type="submit" value="About Us"></a>
          <a href="http://localhost:8080/BookingRoom/unassignedclass.jsp"><input type="submit" value="Chech Unassigned Class"></a>
         <a href="http://localhost:8080/BookingRoom/ordering.jsp"><input type="submit" value="Class Ordering"></a>
          <a href="http://localhost:8080/BookingRoom/classassined.jsp"><input type="submit" value="Checking Assigned Class"></a>
           </div> <center> <hr size=1 width="75%">
   
        <table border="1" width="400" ="#f1f1f1"> 
            <tr><td align="center">
                    <form id="form1" name="form1" method="post" action="ordering.jsp">
                        <br><font color="blue">
            User ID <input type="text" name="userid"><p>
 First Name: <input type="text" name="firstname"><p>
 Last Name <input type="text" name="lastname"><p>
 <div> Building 
                   <select name="buildingno" buildingno="select">
                       <center>
   
           <option value="---">-- Select Building -- </option>
  <option>B-01</option>
  <option>B-02</option>
 <option>B-03</option>
 <option>B-04</option>
 <option>B-05</option>
 <option>B-06</option>
 <option>B-07</option>
 <option>B-08</option>
 <option>B-09</option>
 <option>B-10</option>
                   </select>
     <p>
                 <div> Select Room
                   <select name="room" room="select">
                       <center>
   
   <option value="---">-- Select Class Room -- </option>
  <option>Class Room 101</option>
  <option>Class Room 102</option>
 <option>Class Room 103</option>
 <option>Class Room 104</option>
 <option>Class Room 105</option>
 <option>Class Room 106</option>
 <option>Class Room 107</option>
 <option>Class Room 108</option>
 <option>Class Room 109</option>
 <option>Class Room 110</option>
                   </select>
                
  <p>
  Select Year <select name="year" year="select">
                       <center>
 <p>  Year <option value="---">-- Select Year -- </option>
  <option>2001</option>
  <option>2002</option>
 <option>2003</option>
 <option>2004</option>
  <option>2005</option>
                 <option>2006</option>
                 <option>2007</option>
                 <option>2008</option>
                 <option>2009</option>
                   <option>2010</option>
                 <option>2010</option>
                 <option>2011</option>
                 <option>2012</option>
                 <option>2013</option>
                 <option>2014</option>
                 <option>2015</option>
                 <option>2016</option>
                 <option>2017</option>
                 <option>2018</option>
                 <option>2019</option>
                 <option>2020</option></select><p>
 Date  <input type="text" name="date"><p>
 Time  <input type="text" name="time"><p>
   Select Gender
    <select name="gender" gender="select"><center>
   <option value="---">-- Select Gender -- </option>
  <option>M</option>
  <option>F</option>
    </select><p>
<input type="submit" name="submit" id="button" value="Order Room"/>
        </form>
 </body>                
     </td>
       </tr>
        </table>
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
	 
Regg or=new Regg();
or.rr();
or.ordering(v1, v2, v3, v4, v5, v6, v7, v8,v9);
%>
<% out.println("<script>alert('You are Ordered Classes!!!!')</script>"); %>
<% }}}%>
    <center>
    <div class="container" style="background-color:palevioletred"> <hr>
  <table> <tr><td width="600"><h3><center>Address:<br> Web site:  www.au.edu    Email: au@gmail.com   P.O.Box 217</td>
                      <th width="200"><a href="http://localhost:8080/BookingRoom/about.jsp">About Us</a><p>Contact <p>Vision & Mission </th>
                            </tr></table>     
   </div>   
           </body>
</html>
