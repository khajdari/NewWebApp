<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@page import="java.sql.Connection,java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Octagon</title>
</head>
<body bgcolor="FEF9E7">
<font face="verdana">
	<h1>Hello!</h1>

	<p>
	<p>This is a <font color="red">Red Octagon</font>.
	<p>
	<p>
	<svg height="400" width="400" xmlns="http://www.w3.org/2000/svg">
		<polygon points="70,100 100,70 100,30 70,0 30,0 0,30 0,70 30,100"
			style="fill:red;stroke:black;stroke-width:1" />
	</svg>
</font>
</body>
</html>