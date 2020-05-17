<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@page import="java.sql.Connection,java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%ResultSet resultset = null;%>
<html>
<head>
    <title>ResetStatistics</title>
</head>
<body bgcolor="FEF9E7">
<p>
<center>
    <img src="logo.jpg">
</center>
<p>
<p>
    <font face="verdana" color="green">
        <h1>Reset Statistics</h1>
<p>
<%
    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://ccp6418db.c0jtagmpdqil.us-east-1.rds.amazonaws.com:3306/ccp6418database", "ccp6418user", "ccp6418pass");
        Statement st = conn.createStatement();
        String query = "DELETE FROM PAGE_VISITS";
        int result = st.executeUpdate(query);
%>
<h3>Removed <%= result %> total record shapes</h3>
<%
    } catch (Exception e) {
        out.println("Unexpected issue occurred on data retrieving" + e);
    }
%>


</body>
</html>
