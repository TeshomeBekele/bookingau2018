/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.au.bookingroom;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author ICT 4 ALL
 */
public class Regg {
    public void rr()
    {
        
    }
     public void register(String userid,String firstname,String lastname,String address,String phone,String email,String date,String time) throws ClassNotFoundException, SQLException
    {
       String mysqlconnector="jdbc:mysql://localhost:3306/bookingroom";
       Connection con=null;
       Statement stmt=null;
       String name=null;
	 Class.forName("com.mysql.jdbc.Driver");
	 con=(Connection) DriverManager.getConnection(mysqlconnector,"root","");
	 stmt=(Statement) con.createStatement();
         stmt.execute("INSERT into register values('"+userid+"','"+firstname+"','"+lastname+"','"+address+"','"+ phone+"','"+ email+"','"+ date+"','"+ time+"')");
       }
    
        public void ordering(String v1,String v2,String v3,String v4,String v5, String v6,String v7,String v8,String v9) throws ClassNotFoundException, SQLException
    {
        Connection con=null;
  Statement stmt=null;
  String connection=("jdbc:mysql://localhost:3306/bookingroom");
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection(connection,"root","");
PreparedStatement pst=(PreparedStatement)con.prepareStatement("INSERT into ordering"
        + " values(?,?,?,?,?,?,?,?,?)");
pst.setString(1, v1);
pst.setString(2, v2);
pst.setString(3, v3);
pst.setString(4, v4);
pst.setString(5, v5);
pst.setString(6, v6);
pst.setString(7, v7);
pst.setString(8, v8);
pst.setString(9, v9);

pst.executeUpdate();
    }
    public void registration(String v1,String v2,String v3,String v4,String v5, String v6,String v7,String v8) throws ClassNotFoundException, SQLException
    {
        Connection con=null;
  Statement stmt=null;
  String connection=("jdbc:mysql://localhost:3306/BookingRoom");
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection(connection,"root","");
PreparedStatement pst=(PreparedStatement)con.prepareStatement("INSERT into register values(?,?,?,?,?,?,?,?)");
pst.setString(1, v1);
pst.setString(2, v2);
pst.setString(3, v3);
pst.setString(4, v4);
pst.setString(5, v5);
pst.setString(6, v6);
pst.setString(8, v7);
pst.setString(7, v8);

pst.executeUpdate();
    }  
  
   public void login(String v1,String v2,String v3) throws ClassNotFoundException, SQLException
    {
        Connection con=null;
  Statement stmt=null;
  String connection=("jdbc:mysql://localhost:3306/bookingroom");
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection(connection,"root","");
PreparedStatement pst=(PreparedStatement)con.prepareStatement("INSERT into login values(?,?,?,?,?,?,?,?)");
pst.setString(1, v1);
pst.setString(2, v2);
pst.setString(3, v3);
pst.executeUpdate();
    }  
}


