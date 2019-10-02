<%-- 
    Document   : course
    Created on : Sep 17, 2019, 12:28:12 PM
    Author     : Bijaya Khatiwada
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file = "../dbhelper.jsp"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../bootstrap/bootstrap-4.3.1-dist/css/bootstrap.css" rel="stylesheet" type="text/css"/>

        <link href="../bootstrap/bootstrap-4.3.1-dist/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
    <center>
        <h1> Update Student</h1>   
    </center>
    <%!
        Connection cn;
        PreparedStatement pstmt;
        Statement st;
        ResultSet rs;
    %>




    <div class="row">
        <div class="col-sm-4">

            <%                    int id = Integer.parseInt(request.getParameter("id"));

                try {
                    PreparedStatement pstmt = cn.prepareStatement("select * from student where id=?");
                    pstmt.setInt(1, id);

                    ResultSet rs = pstmt.executeQuery();

                        if (rs.next()) {%>
            <form method="post" align="left" action="_studentupdate.jsp?id=<%=id%>">
                <div>
                    <label class="for-label">Student Name</label>
                    <input type="text" id="studentname" name="studentname" placeholder="Student Name" class="form-control" value="<%=rs.getString(2)%>"required>

                </div>
                <br>
                <div>
                    <label class="for-label">Course</label>

                    <select name="course" id="course" class="form-control">

                        
                        <%
                            st = cn.createStatement();
                             ResultSet rs1 = st.executeQuery("select * from course");
                            while(rs1.next())
                            { 
                                String selected=(rs1.getInt("id")== rs.getInt("course"))?"selected":"";
                        %>
                        <option value="<%=rs1.getString(1)%> " <%=selected%>><%=rs1.getString(2)%></option>
                        <%}
                        %>
                    </select>

                    <br>
                    <div>

                        <label class="for-label">Batch</label>

                        <select name="batch" id="batch" class="form-control">
                            <%
                                st = cn.createStatement();
                              ResultSet  rs2 = st.executeQuery("select * from batch");
                                while (rs2.next()) {%>
                            <option value="<%=rs2.getString(1)%>"><%=rs2.getString(2)%></option>
                            <%}
                            %>
                            <option >Batch</option>
                        </select>
                    </div>
                    <br>

                    <div>
                        <label class="for-label">Address</label>
                        <input type="text" id="address" name="address" placeholder="Address" class="form-control" value="<%=rs.getString("address")%>" required />

                    </div>

                    <br>

                    <div>
                        <label class="for-label">Phone</label>
                        <input type="text" id="phone" name="phone" placeholder="Phone" class="form-control" value="<%=rs.getString("phone")%>"required>

                    </div>

                    <br>
                    <div>
                        <input type="submit" name="submit" class="btn btn-info" value="Update" >
                        <input type="reset" name="reset" class="btn btn-warning" value="Reset" >

                    </div>


                </div>
                <%}

                    } catch (Exception e) {
                        System.out.println("Error while fetching the database");
                        e.printStackTrace();
                        e.getMessage();
                    }


                %>

