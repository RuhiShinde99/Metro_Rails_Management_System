<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<%
try {
            String connectionURL = "jdbc:mysql://localhost:3306/mysql?zeroDateTimeBehavior=convertToNull";
            Connection connection = null; 
            Class.forName("com.mysql.jdbc.Driver").newInstance(); 
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/metrorail", "root", "RUHISHINDE@123");
            if(!connection.isClosed())
                 out.println("Successfully connected to " + "MySQL server using TCP/IP...");
            connection.close();
        }
         catch(Exception ex)
         {
            out.println("Unable to connect to database"+ex);
         } 

%>
<%!
  void getCompaints(){
      
  }
   
%>
