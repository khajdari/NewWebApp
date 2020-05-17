<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@page import="java.sql.Connection,java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Rhombus</title>
</head>
<body bgcolor="FEF9E7">

<%

	try {

		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://ccp6418db.c0jtagmpdqil.us-east-1.rds.amazonaws.com:3306/ccp6418database", "ccp6418user", "ccp6418pass");
		Statement st = conn.createStatement();
		st.executeUpdate("INSERT INTO PAGE_VISITS (SHAPE, TS) VALUES ('Rhombus', NOW())");
		out.println("Rhombus visit is successfully logged!");
	} catch (Exception e) {
		out.println("Rhombus visit log failed!");
		e.printStackTrace();
	}
%>

<font face="verdana">
	<h1>Hello!</h1>

	<p>
	<p>This is a <font color="red">Red Rhombus</font>.
	<p>
	<p>
		<svg height="400" width="300" xmlns="http://www.w3.org/2000/svg">
			<polygon points="100,160 140,100 100,40 60,100"
					 style="fill:red;stroke:black;stroke-width:1" />
		</svg>
</font>
</body>
</html>