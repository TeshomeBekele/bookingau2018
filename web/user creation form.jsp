<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Ambo University User Creation Form</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    
    <body bgcolor="Khaki">
        <div class="container" style="background-color:palevioletred"> <h1><center><img src="logo.png" width="100" height="100" aliggnment=left> &nbsp; &nbsp; &nbsp; &nbsp; Ambo University User Creation Form &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <img src="logo.png" width="100" height="100" aliggnment=left></h1> 
           <center>  <a href="http://localhost:8080/BookingRoom/index.jsp"><input type="submit" value="Home"></a> </a>
            <a href="http://localhost:8080/BookingRoom/about.jsp"><input type="submit" value="About Us"></a>
            <a href="http://localhost:8080/BookingRoom/ordering.jsp"><input type="submit" value="Class Ordering"></a>
        <a href="http://localhost:8080/BookingRoom/Registration.jsp"><input type="submit" value="Registration"></a>
            <a href="http://localhost:8080/BookingRoom/unassignedclass.jsp"><input type="submit" value="Chech Unassigned Class"></a>
         <a href="http://localhost:8080/BookingRoom/classassined.jsp"><input type="submit" value="Checking Assigned Class"></a>
          <a href="http://localhost:8080/BookingRoom/Registration List.jsp"><input type="submit" value="Registration List"></a>
         <a href="http://localhost:8080/BookingRoom/delete%20record.jsp"><input type="submit" value="Cancel Ordered class"></a>
          </div><hr size=1 width="75%"> <center>      
             <tr>   <div> 
        <table border="1" center width="400" bgcolor="#f1f1f1"><p>
            <tr>
                <td align="center"><p>
        <form id="form1" name="form1" method="post" action="user creation form.jsp">
      
                <div> User Type
                   <select name="usertype" usertype="select">
                       <center>
   
           <option value="---">Select User Type </option>
  <option>Admin</option>
  <option>Customer</option>
                       </center></select><p>
   User Name: <input type="text" name="username"><p>
Password <input type="text" name="password"><p>
<input type="submit" name="submit" id="button" value="Create" /><p>
        </form>
                </td>
            </tr>
        </table>
        <br><br><br><br><br><br><br><br><br>
        <div class="container" style="background-color:palevioletred"> <hr>
  <table> <tr><td width="600"><h3><center>Address:<br> Web site:  www.au.edu    Email: au@gmail.com   P.O.Box 217</td>
                            <th width="200">About Us<p>Contact <p>Vision & Mission </th>
                            </tr></table>     
   </div> 
 </body>
 <%@page import="java.sql.*" %>
<%@page import="java.lang.*" %>
<%@page import="java.util.Date" %>


<%
    if("POST".equalsIgnoreCase(request.getMethod())){
        if(request.getParameter("submit")!=null){
            if(request.getParameter("submit")!="submit"){
    
  /*Connection con=null;
  Statement stmt=null;
  String connection=("jdbc:mysql://localhost:3306/bookingroom");
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection(connection,"root","");*/
        String st="8:00AM",et="6:00PM",s="Free";
	 String v1=request.getParameter("usertype");
	 String v2=request.getParameter("username");
         String v3=request.getParameter("password");
 
         

/*PreparedStatement pst=(PreparedStatement)con.prepareStatement("INSERT into login values(?,?,?)");

pst.setString(1, v1);
pst.setString(2, v2);
pst.setString(3, v3);

pst.executeUpdate();*/

%>
<% out.println("<script>alert('You are Created a User Correctly !!!!')</script>"); %>
<% }}}%>
</html>




