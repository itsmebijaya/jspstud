<%@page import="java.sql.*" %>
<%
    Class.forName("com.mysql.jdbc.Driver");
    
%>

<%
    String batchname=request.getParameter("batchname");
    String year=request.getParameter("year");
    
    try {
            Connection cn;
            PreparedStatement pstmt;
            
            Class.forName("com.mysql.jdbc.Driver");
            cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/jspstdm","root","Norway123");
            pstmt=cn.prepareStatement("insert into batch (batchname,year) values (?,?)");
            pstmt.setString(1, batchname);
            pstmt.setString(2, year);
            
            
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