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
        <h1> Student Registration Form</h1>   
    </center>
        <%!
            Connection cn;
            PreparedStatement pstmt;
            Statement st;
            ResultSet rs;
        %>
        
        <div class="row">
            <div class="col-sm-4">
                <form method="post" align="left" action="add.jsp">
                    <div>
                        <label class="for-label">Student Name</label>
                        <input type="text" id="studentname" name="studentname" placeholder="Student Name" class="form-control" required>

                    </div>
                    <br>
                    <div>
                        <label class="for-label">Course</label>

                        <select name="course" id="course" class="form-control">
                            
<!--                            <option value="select"> ----- Select Course ----- </option>-->
                            <%
                                st=cn.createStatement();
                                rs=st.executeQuery("select * from course");
                                while(rs.next()){%>
                                <option value="<%=rs.getString(1)%>"><%=rs.getString(2)%></option>
                            <%}
                            %>
                        </select>

                        <br>
                         <div>
                        <label class="for-label">Batch</label>

                        <select name="batch" id="batch" class="form-control">
                            <%
                                st=cn.createStatement();
                                rs=st.executeQuery("select * from batch");
                                while(rs.next()){%>
                                <option value="<%=rs.getString(1)%>"><%=rs.getString(2)%></option>
                            <%}
                            %>
                            <option >Batch</option>
                        </select>
                            </div>
                        <br>

                        <div>
                            <label class="for-label">Address</label>
                            <input type="text" id="address" name="address" placeholder="Address" class="form-control"  required>

                        </div>
                        
                        <br>

                        <div>
                            <label class="for-label">Phone</label>
                            <input type="text" id="phne" name="phone" placeholder="Phone" class="form-control" required>

                        </div>
                        
                        <br>


                    </div>

                    <div>
                        <input type="submit" name="submit" class="btn btn-info" value="Submit" >
                        <input type="reset" name="reset" class="btn btn-warning" value="Reset" >

                    </div>
                </form>
                            <%
                                String msg=request.getParameter("msg");
                                if(msg!=null){
                                    out.println(msg);
                                }
                            %>



            </div>
            <div class="col-sm-8">

                <div class="panel-body">
                    <table id="tbl-course" class="table table-responsive table-bordered" cellpadding="0" width="100%">

                        <thead>
                            <tr>
                                <th>Student Name</th>
                                <th>Course</th>
                                <th>Batch</th>
                                <th>Address</th>
                                <th>Phone</th>
                                <th>Edit</th>
                                <th>Delete</th>
                            </tr>
                        <thead>

                        <tbody>
                            <%
                                try {
                                    

                                    Class.forName("com.mysql.jdbc.Driver");
                                    cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jspstdm", "root", "Norway123");
                                    st = cn.createStatement();
                                    rs = st.executeQuery("select s.id,s.studentname,c.coursename,b.batchname,s.address,s.phone FROM student s JOIN course c ON s.course=c.id JOIN batch b ON s.batch=b.id;");
                                    while (rs.next()) {
                                        int id = rs.getInt(1);
                            %>



                            <tr>
                                <td><%=rs.getString(2)%></td>

                                <td><%=rs.getString(3)%></td>
                                
                                <td><%=rs.getString(4)%></td>
                                
                                <td><%=rs.getString(5)%></td>
                                
                                <td><%=rs.getString(6)%></td>

                                <td><a href="studentupdate.jsp?id=<%=id%>">Edit</a></td>

                                <td><a href="_studentdelete.jsp?id=<%=id%>">Delete</a></td>
                            </tr>


                            <%}
                                } catch (Exception e) {
e.printStackTrace();
                                }
                            %>

                        </tbody>
                    </table>
                </div>


            </div>


</html>
