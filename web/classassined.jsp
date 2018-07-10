<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Ambo University Waliso campus Class Room</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body bgcolor="Khaki">
        <div class="container" style="background-color:palevioletred"> <h1><center><img src="logo.png" width="100" height="100" aliggnment=left> &nbsp; &nbsp; &nbsp; &nbsp; Ambo University Class Room Assigned &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <img src="logo.png" width="100" height="100" aliggnment=left></h1> 
    <center>  <a href="http://localhost:8080/BookingRoom/index.jsp"><input type="submit" value="Home"></a>
         <a href="http://localhost:8080/BookingRoom/about.jsp"><input type="submit" value="About Us"></a>
     <a href="http://localhost:8080/BookingRoom/unassignedclass.jsp"><input type="submit" value="Chech Unassigned Class"></a>
      <a href="http://localhost:8080/BookingRoom/classassined.jsp"><input type="submit" value="Checking Assigned Class"></a>
       
    </div><hr width="75%">
    </div><hr width="60%">
    <h1><center> Users Information</center></h1>
    <center>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>

<form method="post">

<table border="2">
   <tr>
        <td>User ID</td>
        <td>First Name</td>
        <td>Last Name</td>
        <td>Building Number</td>
        <td>Room</td>
        <td>Year</td>
        <td>Date</td>
        <td>Time</td>
        <td>Gender</td>
   </tr>
   <%
   try
   {
       Class.forName("com.mysql.jdbc.Driver");
       String url=("jdbc:mysql://localhost:3306/BookingRoom");
       String username="ambo";
       String password="123";
       String query="select * from ordering";
       Connection conn=DriverManager.getConnection(url, username, password);
       Statement stmt=conn.createStatement();
       ResultSet rs=stmt.executeQuery(query);
       while(rs.next())
       {
   %>
   <tr><td><%out.println(rs.getString("userid")); %></td>
   <td><%out.println(rs.getString("firstname")); %></td>
   <td><%out.println(rs.getString("lastname")); %></td>
   <td><%out.println(rs.getString("buildingno")); %></td>        
   <td><%out.println(rs.getString("room")); %></td>         
   <td><%out.println(rs.getString("year")); %></td>   
   <td><%out.println(rs.getDate("date")); %></td> 
   <td><%out.println(rs.getString("time")); %></td>
   <td><%out.println(rs.getString("gender")); %></td></tr>    
   <%
       }
   %>
   </table>
   <%
        rs.close();
        stmt.close();
        conn.close();
   }
   catch(Exception e)
   {
        e.printStackTrace();
   }
   %>
</form>`
<br><br><br><br><br><br>
<center>
    <div class="container" style="background-color:palevioletred"> <hr>
  <table> <tr><td width="600"><h3><center>Address:<br> Web site:  www.au.edu    Email: au@gmail.com   P.O.Box 217</td>
                            <th width="200">About Us<p>Contact <p>Vision & Mission </th>
                            </tr></table>     
   </div>    
</html>
