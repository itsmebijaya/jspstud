<%@page import="java.sql.*" %>

<%
    Class.forName("com.mysql.jdbc.Driver");
    Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/jspstdm","root","Norway123");
    
%>