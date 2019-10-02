<%-- 
    Document   : course
    Created on : Sep 17, 2019, 12:28:12 PM
    Author     : Bijaya Khatiwada
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../bootstrap/bootstrap-4.3.1-dist/css/bootstrap.css" rel="stylesheet" type="text/css"/>

        <link href="../bootstrap/bootstrap-4.3.1-dist/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Course</h1>
        <div class="row">
            <div class="col-sm-4">
                <form method="post" align="left" action="add.jsp">
                    <div>
                        <label class="for-label">Batch Name</label>
                        <input type="text" id="batchname" name="batchname" placeholder="Batch Name" class="form-control" required>

                    </div>

                    <div>
                        <label class="for-label">Year</label>
                        <input type="text" id="year" name="year" placeholder="Year" class="form-control" required>

                    </div>

                    <div>
                        <input type="submit" name="submit" class="btn btn-info" value="Submit" >
                        <input type="reset" name="reset" class="btn btn-warning" value="Reset" >

                    </div>
                </form>




            </div>
            <div class="col-sm-8">

                <div class="panel-body">
                    <table id="tbl-course" class="table table-responsive table-bordered" cellpadding="0" width="100%">

                        <thead>
                            <tr>
                                <th>Batch Name</th>
                                <th>Year</th>
                                <th>Edit</th>
                                <th>Delete</th>
                            </tr>
                        <thead>

                        <tbody>
                            <%
                                try {
                                    Connection cn;

                                    Class.forName("com.mysql.jdbc.Driver");
                                    cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jspstdm", "root", "Norway123");
                                    Statement st = cn.createStatement();
                                    ResultSet rs = st.executeQuery("select * from batch");
                                    while (rs.next()) {
                                        int id=rs.getInt(1);
                            %>
                                    
                                    

                            <tr>
                                <td><%=rs.getString(2)%></td>
                            
                                <td><%=rs.getString(3)%></td>
                            
                                <td><a href="batchupdate.jsp?id=<%=id%>">Edit</a></td>
                            
                                <td><a href="_batchdelete.jsp?id=<%=id%>">Delete</a></td>
                            </tr>


                            <%}
                                } catch (Exception e) {
                                }
                            %>

                        </tbody>
                    </table>
                </div>


            </div>


</html>
