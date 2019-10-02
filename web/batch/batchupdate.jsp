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
                
                    <%
                        Connection cn;
                        PreparedStatement pstmt;

                        int id = Integer.parseInt(request.getParameter("id"));
                        Class.forName("com.mysql.jdbc.Driver");
                        cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jspstdm", "root", "Norway123");
                        pstmt = cn.prepareStatement("select * from batch where id=?");
                        pstmt.setInt(1, id);

                        ResultSet rs = pstmt.executeQuery();

                        if (rs.next()) {
                    %>
                    <form method="post" align="left" action="_batchupdate.jsp?id=<%=id%>">
<!--                    <div>
                        <label class="for-label">Batch Id</label>
                        <input type="text" id="batchid" name="batchid" placeholder="Batch Id" class="form-control" value="<%=rs.getString(1)%>"required>

                    </div>-->

                    <div>
                        <label class="for-label">Batch Name</label>
                        <input type="text" id="batchname" name="batchname" placeholder="Batch Name" class="form-control" value="<%=rs.getString(2)%>"required>

                    </div>

                    <div>
                        <label class="for-label">Duration</label>
                        <input type="text" id="year" name="year" placeholder="Year" class="form-control" value="<%=rs.getString(3)%>" required>

                    </div>
                            <br>
                    <div>
                        <input type="submit" name="submit" class="btn btn-info" value="Submit" >
                        <input type="reset" name="reset" class="btn btn-warning" value="Reset" >

                    </div>

                    <%
                        }


                    %>


                </form>




            </div>
            <div class="col-sm-8">




            </div>


</html>
