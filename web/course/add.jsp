<%@page import="java.sql.*" %>
<%
    Class.forName("com.mysql.jdbc.Driver");
    
%>

<%
    String coursename=request.getParameter("coursename");
    String duration=request.getParameter("duration");
    
    try {
            Connection cn;
            PreparedStatement pstmt;
            
            Class.forName("com.mysql.jdbc.Driver");
            cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/jspstdm","root","Norway123");
            pstmt=cn.prepareStatement("insert into course (coursename,duration)values (?,?)");
            pstmt.setString(1, coursename);
            pstmt.setString(2, duration);
            
            
            int rs=pstmt.executeUpdate();
            
            if(rs>0){
                out.println("Record Added");
            }
            
            else{
                out.println("Record Not Added");
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        }
    
%>