
<html>
          <title>Ambo University Class Room</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body bgcolor="Khaki">
        <div class="container" style="background-color:palevioletred"> <h1><center><img src="logo.png" width="100" height="100" aliggnment=left> &nbsp; &nbsp; &nbsp; &nbsp; Ambo University Class Room Scheduling &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <img src="logo.png" width="100" height="100" aliggnment=left></h1> 
           <center>  <a href="http://localhost:8080/BookingRoom/index.jsp"><input type="submit" value="Home"></a> </a>
            <a href="http://localhost:8080/BookingRoom/about.jsp"><input type="submit" value="About Us"></a>
            <a href="http://localhost:8080/BookingRoom/ordering.jsp"><input type="submit" value="Class Ordering"></a>
        <a href="http://localhost:8080/BookingRoom/unassignedclass.jsp"><input type="submit" value="Chech Unassigned Class"></a>
         <a href="http://localhost:8080/BookingRoom/classassined.jsp"><input type="submit" value="Checking Assigned Class"></a>
          <a href="http://localhost:8080/BookingRoom/Registration List.jsp"><input type="submit" value="Registration List"></a>
         </div><hr size=1 width="75%"> <center>      
</html>

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
