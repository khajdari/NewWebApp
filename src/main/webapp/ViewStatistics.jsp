<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ page import="java.sql.Connection,java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<% ResultSet resultset = null; %>
<% Class.forName("com.mysql.jdbc.Driver"); %>
<% Connection connection = DriverManager.getConnection("jdbc:mysql://ccp6418db.c0jtagmpdqil.us-east-1.rds.amazonaws.com:3306/ccp6418database", "ccp6418user", "ccp6418pass"); %>

<html>
<head>
    <title>ViewStatistics</title>
</head>
<body bgcolor="FEF9E7">
<p>
<center>
    <img src="logo.jpg">
</center>
<p>
<p>
    <font face="verdana" color="green">
        <h1>View Statistics</h1>
<p>
<%
    try {
        Statement statement = connection.createStatement();
        resultset = statement.executeQuery("SELECT * FROM PAGE_VISITS WHERE SHAPE = 'Circle'");
        int totalShapes = 0;
        if (resultset.last()) {
           totalShapes = resultset.getRow();
           resultset.beforeFirst();
        }
%>
<h3>Circle <%= totalShapes %> visits</h3>
<ul>
    <% while (resultset.next()) { %>
    <li><%= resultset.getTimestamp("TS")%>
    </li>
    <% } %>
</ul>
<%
        statement.close();
        resultset.close();
    } catch (Exception e) {
        out.println("Unexpected issue occurred on data retrieving" + e);
    }
%>


<%
    try {
        Statement statement = connection.createStatement();
        resultset = statement.executeQuery("SELECT * FROM PAGE_VISITS WHERE SHAPE = 'Eclipse'");
        int totalShapes = 0;
        if (resultset.last()) {
            totalShapes = resultset.getRow();
            resultset.beforeFirst();
        }
%>
<h3>Eclipse <%= totalShapes %> visits</h3>
<ul>
    <% while (resultset.next()) { %>
    <li><%= resultset.getTimestamp("TS")%>
    </li>
    <% } %>
</ul>
<%
        statement.close();
        resultset.close();
    } catch (Exception e) {
        out.println("Unexpected issue occurred on data retrieving" + e);
    }
%>


<%
    try {
        Statement statement = connection.createStatement();
        resultset = statement.executeQuery("SELECT * FROM PAGE_VISITS WHERE SHAPE = 'Equilateral Triangle'");
        int totalShapes = 0;
        if (resultset.last()) {
            totalShapes = resultset.getRow();
            resultset.beforeFirst();
        }
%>
<h3>Equilateral Triangle <%= totalShapes %> visits</h3>
<ul>
    <% while (resultset.next()) { %>
    <li><%= resultset.getTimestamp("TS")%>
    </li>
    <% } %>
</ul>
<%
        statement.close();
        resultset.close();
    } catch (Exception e) {
        out.println("Unexpected issue occurred on data retrieving" + e);
    }
%>

<%
    try {
        Statement statement = connection.createStatement();
        resultset = statement.executeQuery("SELECT * FROM PAGE_VISITS WHERE SHAPE = 'Hexagon'");
        int totalShapes = 0;
        if (resultset.last()) {
            totalShapes = resultset.getRow();
            resultset.beforeFirst();
        }
%>
<h3>Hexagon <%= totalShapes %> visits</h3>
<ul>
    <% while (resultset.next()) { %>
    <li><%= resultset.getTimestamp("TS")%>
    </li>
    <% } %>
</ul>
<%
        statement.close();
        resultset.close();
    } catch (Exception e) {
        out.println("Unexpected issue occurred on data retrieving" + e);
    }
%>

<%
    try {
        Statement statement = connection.createStatement();
        resultset = statement.executeQuery("SELECT * FROM PAGE_VISITS WHERE SHAPE = 'Isosceles Trapezoid'");
        int totalShapes = 0;
        if (resultset.last()) {
            totalShapes = resultset.getRow();
            resultset.beforeFirst();
        }
%>
<h3>Isosceles Trapezoid <%= totalShapes %> visits</h3>
<ul>
    <% while (resultset.next()) { %>
    <li><%= resultset.getTimestamp("TS")%>
    </li>
    <% } %>
</ul>
<%
        statement.close();
        resultset.close();
    } catch (Exception e) {
        out.println("Unexpected issue occurred on data retrieving" + e);
    }
%>

<%
    try {
        Statement statement = connection.createStatement();
        resultset = statement.executeQuery("SELECT * FROM PAGE_VISITS WHERE SHAPE = 'Isosceles Triangle'");
        int totalShapes = 0;
        if (resultset.last()) {
            totalShapes = resultset.getRow();
            resultset.beforeFirst();
        }
%>
<h3>Isosceles Triangle <%= totalShapes %> visits</h3>
<ul>
    <% while (resultset.next()) { %>
    <li><%= resultset.getTimestamp("TS")%>
    </li>
    <% } %>
</ul>
<%
        statement.close();
        resultset.close();
    } catch (Exception e) {
        out.println("Unexpected issue occurred on data retrieving" + e);
    }
%>

<%
    try {
        Statement statement = connection.createStatement();
        resultset = statement.executeQuery("SELECT * FROM PAGE_VISITS WHERE SHAPE = 'Octagon'");
        int totalShapes = 0;
        if (resultset.last()) {
            totalShapes = resultset.getRow();
            resultset.beforeFirst();
        }
%>
<h3>Octagon <%= totalShapes %> visits</h3>
<ul>
    <% while (resultset.next()) { %>
    <li><%= resultset.getTimestamp("TS")%>
    </li>
    <% } %>
</ul>
<%
        statement.close();
        resultset.close();
    } catch (Exception e) {
        out.println("Unexpected issue occurred on data retrieving" + e);
    }
%>

<%
    try {
        Statement statement = connection.createStatement();
        resultset = statement.executeQuery("SELECT * FROM PAGE_VISITS WHERE SHAPE = 'Parallelogram'");
        int totalShapes = 0;
        if (resultset.last()) {
            totalShapes = resultset.getRow();
            resultset.beforeFirst();
        }
%>
<h3>Parallelogram <%= totalShapes %> visits</h3>
<ul>
    <% while (resultset.next()) { %>
    <li><%= resultset.getTimestamp("TS")%>
    </li>
    <% } %>
</ul>
<%
        statement.close();
        resultset.close();
    } catch (Exception e) {
        out.println("Unexpected issue occurred on data retrieving" + e);
    }
%>

<%
    try {
        Statement statement = connection.createStatement();
        resultset = statement.executeQuery("SELECT * FROM PAGE_VISITS WHERE SHAPE = 'Pentagon'");
        int totalShapes = 0;
        if (resultset.last()) {
            totalShapes = resultset.getRow();
            resultset.beforeFirst();
        }
%>
<h3>Pentagon <%= totalShapes %> visits</h3>
<ul>
    <% while (resultset.next()) { %>
    <li><%= resultset.getTimestamp("TS")%>
    </li>
    <% } %>
</ul>
<%
        statement.close();
        resultset.close();
    } catch (Exception e) {
        out.println("Unexpected issue occurred on data retrieving" + e);
    }
%>

<%
    try {
        Statement statement = connection.createStatement();
        resultset = statement.executeQuery("SELECT * FROM PAGE_VISITS WHERE SHAPE = 'Rhombus'");
        int totalShapes = 0;
        if (resultset.last()) {
            totalShapes = resultset.getRow();
            resultset.beforeFirst();
        }
%>
<h3>Rhombus <%= totalShapes %> visits</h3>
<ul>
    <% while (resultset.next()) { %>
    <li><%= resultset.getTimestamp("TS")%>
    </li>
    <% } %>
</ul>
<%
        statement.close();
        resultset.close();
    } catch (Exception e) {
        out.println("Unexpected issue occurred on data retrieving" + e);
    }
%>

<%
    try {
        Statement statement = connection.createStatement();
        resultset = statement.executeQuery("SELECT * FROM PAGE_VISITS WHERE SHAPE = 'Right Rectangle'");
        int totalShapes = 0;
        if (resultset.last()) {
            totalShapes = resultset.getRow();
            resultset.beforeFirst();
        }
%>
<h3>Right Rectangle <%= totalShapes %> visits</h3>
<ul>
    <% while (resultset.next()) { %>
    <li><%= resultset.getTimestamp("TS")%>
    </li>
    <% } %>
</ul>
<%
        statement.close();
        resultset.close();
    } catch (Exception e) {
        out.println("Unexpected issue occurred on data retrieving" + e);
    }
%>

<%
    try {
        Statement statement = connection.createStatement();
        resultset = statement.executeQuery("SELECT * FROM PAGE_VISITS WHERE SHAPE = 'Right Triangle'");
        int totalShapes = 0;
        if (resultset.last()) {
            totalShapes = resultset.getRow();
            resultset.beforeFirst();
        }
%>
<h3>Right Triangle <%= totalShapes %> visits</h3>
<ul>
    <% while (resultset.next()) { %>
    <li><%= resultset.getTimestamp("TS")%>
    </li>
    <% } %>
</ul>
<%
        statement.close();
        resultset.close();
    } catch (Exception e) {
        out.println("Unexpected issue occurred on data retrieving" + e);
    }
%>

<%
    try {
        Statement statement = connection.createStatement();
        resultset = statement.executeQuery("SELECT * FROM PAGE_VISITS WHERE SHAPE = 'Square'");
        int totalShapes = 0;
        if (resultset.last()) {
            totalShapes = resultset.getRow();
            resultset.beforeFirst();
        }
%>
<h3>Square <%= totalShapes %> visits</h3>
<ul>
    <% while (resultset.next()) { %>
    <li><%= resultset.getTimestamp("TS")%>
    </li>
    <% } %>
</ul>
<%
        statement.close();
        resultset.close();
    } catch (Exception e) {
        out.println("Unexpected issue occurred on data retrieving" + e);
    }
    connection.close();
%>
</body>
</html>
