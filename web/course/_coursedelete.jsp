<%@include file="../dbhelper.jsp" %>

<%
    int id=Integer.parseInt(request.getParameter("id"));
    try {
        PreparedStatement pstmt=cn.prepareStatement("delete from course where id=?");
    
    pstmt.setInt(1, id);
    
    int result=pstmt.executeUpdate();
    
    if(result>0){
            out.println("Student Deleted");
    }
            else{
            out.println("Student Not Deleted");
        }
        } catch (Exception e) {
            e.printStackTrace();
                    
        }
    
    
%>