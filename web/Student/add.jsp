xxx<%@page import="java.sql.*" %>
<%
    Class.forName("com.mysql.jdbc.Driver");
    
%>

<%
    String studentname=request.getParameter("studentname");
    int course=Integer.parseInt(request.getParameter("course"));
    int batch=Integer.parseInt(request.getParameter("batch"));
    String address=request.getParameter("address");
    int phone=Integer.parseInt(request.getParameter("phone"));
    
    
    
    
    try {
            Connection cn;
            PreparedStatement pstmt;
            
            Class.forName("com.mysql.jdbc.Driver");
            cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/jspstdm","root","Norway123");
            pstmt=cn.prepareStatement("insert into student (studentname,course,batch,address,phone) values (?,?,?,?,?)");
            pstmt.setString(1, studentname);
            pstmt.setInt(2, course);
            pstmt.setInt(3, batch);
            pstmt.setString(4, address);
            pstmt.setInt(5,phone);
            
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