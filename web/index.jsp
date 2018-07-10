<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
     </center> </div>     <title>Ambo University Class Room Scheduling </title>
        
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
 <div class="container" style="background-color:palevioletred"> <h1><center><img src="logo.png" width="100" height="100" aliggnment=left> &nbsp; &nbsp; &nbsp; &nbsp; Ambo University Class Room Scheduling &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <img src="logo.png" width="100" height="100" aliggnment=left></h1>         
 <a href="http://localhost:8080/BookingRoom/index.jsp"><center><input type="submit" value="Home"></a> 
 <a href="http://localhost:8080/BookingRoom/about.jsp"><input type="submit" value="About Us"></a>
 <a href="http://localhost:8080/BookingRoom/unassignedclass.jsp"><input type="submit" value="Chech Unassigned Class"></a>
 <a href="http://localhost:8080/BookingRoom/classassined.jsp"><input type="submit" value="Checking Assigned Class"></a>
         <body bgcolor="khaki"></div>
        
    </center>
        <hr size=1 width="75%">  
        <hr size=1 width="60%"> 
        </table>
         <table align="center">
            <tr>
                                <td>
 <center> <img src="ambo-university.jpg" width="510" height="310"> </center>
                </td>
                <td>
 <img src="arrow icon.gif" width="150" height="150" aliggnment=left>
                </td>
                <td>
                     <form id="form1" name="form1" method="post" action="User Selection.jsp">
                         <p align="center"><font size="+2">User Login </font></p>
      <div> Customer Type
                   <select name="type" room="admin">
                       <center>
   
           <option value="Admin">Admin </option>
         <option value="Teacher">Teacher </option>
 
                       </center></select><p></p>
               
    <p>
      <label>
          
        User Name
        <input type="text" name="username" id="textfield" />
        <br>
        <br>
        <br>
        Password &nbsp;
        <input type="password" name="password" id="textfield2" />
        <br>
        <br> 
        &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
        <input type="submit" name="button" id="button" value="Login" />
          &nbsp; &nbsp;&nbsp; &nbsp; <br><input type="checkbox" checked="checked" name="remember"> Remember me
    </label>
        </form>
  </div>
  <div class="container" style="background-color:#f1f1f1">
        <span class="psw">Forgot <a href="#">password?</a></span>
<span class="psw"> <a href="#">Sign Up</a></span>

                </td>
        </table>
        
     <form id="form1" name="form1" method="post" action="index.jsp">      
   Feed Back <textarea name="comment" form="usrform" width="500" height="200">Enter text here...</textarea>
   <b> <input type="submit" name="feedback" id="button" value="Send"/></b>
     </form>
    <center>
    <div class="container" style="background-color:palevioletred"> <hr>
  <table> <tr><td width="600"><h3><center>Address:<br> Web site:  www.au.edu    Email: au@gmail.com   P.O.Box 217</td>
                      
                      <th width="200"><a href="http://localhost:8080/BookingRoom/about.jsp">About Us</a><p><a href="http://localhost:8080/BookingRoom/conctact.jsp">Contact <p>Vision & Mission </th>
                           
                      </tr></table>     
   </div>              
    </body>
</html>
 <%@page import="java.sql.*" %>
<%@page import="java.lang.*" %>
<%@page import="java.util.Date" %>

<%
      if("POST".equalsIgnoreCase(request.getMethod())){
        if(request.getParameter("feedback")!=null){
            if(request.getParameter("feedback")!="feedback"){
  Connection con=null;
  Statement stmt=null;
  String connection=("jdbc:mysql://localhost:3306/BookingRoom");
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection(connection,"root","");
        String st="8:00AM",et="6:00PM",s="Free";
	 String v1=request.getParameter("feedback");
       
PreparedStatement pst=(PreparedStatement)con.prepareStatement("INSERT into feedback values(?)");
pst.setString(1, v1);
pst.executeUpdate();
%>
<% out.println("<script>alert('You are submitted feedback!!')</script>"); %>
<% out.println("<script>alert('Thank you for your feedback!!')</script>"); %>
<% }}}%>
    


</body>
    </html>

