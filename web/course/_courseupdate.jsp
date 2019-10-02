
<%@include file="../dbhelper.jsp" %>

<%
    int id=Integer.parseInt(request.getParameter("courseid"));
    String coursename=request.getParameter("coursename");
    String duration=request.getParameter("duration");
    
    try {
            PreparedStatement pstmt=cn.prepareStatement("update course set coursename=?, duration=? where id=?");
            pstmt.setString(1, coursename);
            pstmt.setString(2, duration);
            pstmt.setInt(3, id);
            
            int rs=pstmt.executeUpdate();
            
            if(rs>0){
                out.println("Student Updated");
            }
            
            else{
                out.println("Student Not Updated");
            }
            
        } catch (Exception e) {
            System.out.println("Error");
            e.printStackTrace();
        }
    
%>