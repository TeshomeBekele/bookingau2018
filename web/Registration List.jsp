<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Ambo University Registration</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body bgcolor="Khaki">
        <div class="container" style="background-color:blueviolet"> <h1><center><img src="logo.png" width="100" height="100" aliggnment=left> &nbsp; &nbsp; &nbsp; &nbsp; Ambo University Registration List &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <img src="logo.png" width="100" height="100" aliggnment=left></h1> 
    <center>  <a href="http://localhost:8080/BookingRoom/index.jsp"><input type="submit" value="Home"></a>
         <a href="http://localhost:8080/BookingRoom/about.jsp"><input type="submit" value="About Us"></a>
        <a href="http://localhost:8080/BookingRoom/Registration.jsp"><input type="submit" value="Registration"></a>
        <a href="http://localhost:8080/BookingRoom/ordering.jsp"><input type="submit" value="Class Ordering"></a>
        <a href="http://localhost:8080/BookingRoom/unassignedclass.jsp"><input type="submit" value="Chech Unassigned Class"></a>
        <a href="http://localhost:8080/BookingRoom/classassined.jsp"><input type="submit" value="Checking Assigned Class"></a>
    <a href="http://localhost:8080/BookingRoom/delete%20record.jsp"><input type="submit" value="Cancel Ordered class"></a>
                 </div><hr width="75%">
    <h1><center> Users Information</center></h1>
    <center> 
        
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>

<form method="post">

<table border="2">
   <tr align="center">
        <th>User ID</th>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Address</th>
        <th>Phone Number</th>
        <th>E-Mail Address</th>
        <th>Date</th>
        <th>Sex</th>
        
   </tr>
   <%
   try
   {
       Class.forName("com.mysql.jdbc.Driver");
       String url=("jdbc:mysql://localhost:3306/BookingRoom");
       String username="ambo";
       String password="123";
       String query="select * from register";
       Connection conn=DriverManager.getConnection(url, username, password);
       Statement stmt=conn.createStatement();
       ResultSet rs=stmt.executeQuery(query);
       while(rs.next())
       {
   %>
   <tr><td><%out.println(rs.getString("userid")); %></td>
   <td><%out.println(rs.getString("firstname")); %></td>
   <td><%out.println(rs.getString("lastname")); %></td>
   <td><%out.println(rs.getString("address")); %></td> 
   <td><%out.println(rs.getString("phone")); %></td>
   <td><%out.println(rs.getString("email")); %></td>
   <td><%out.println(rs.getString("date")); %></td>         
   <td><%out.println(rs.getString("sex")); %></td> </tr>    
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
        
<center>
      <br><br><br><br><br><br><br><br><br>
    <div class="container" style="background-color:blue"> <hr>
  <table> <tr><td width="600"><h3><center>Address:<br> Web site:  www.au.edu    Email: au@gmail.com   P.O.Box 217</td>
                            <th width="200">About Us<p>Contact <p>Vision & Mission </th>
                            </tr></table>     
   </div> 
</html>