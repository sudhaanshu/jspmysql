<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String subjects=request.getParameter("subjects");
String time=request.getParameter("time");


try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/learninig", "root", "1234");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into learn(subjects,time)values('"+subjects+"','"+time+"')");


out.println("Data is successfully inserted!");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>