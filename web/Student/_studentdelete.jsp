<%@include file="../dbhelper.jsp"%>

<%
    int id=Integer.parseInt(request.getParameter("id"));
    
    try {
            PreparedStatement pstmt=cn.prepareStatement("delete from student where id=?");
            pstmt.setInt(1, id);
            int result=pstmt.executeUpdate();
            
            if(result>0){
                response.sendRedirect("student.jsp?msg=Student Deleted");
            }
            
            else{
                response.sendRedirect("student.jsp?msg=Student Not Deleted");
            
            }
        } catch (Exception e) {
        }
%>