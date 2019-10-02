<%@include file="../dbhelper.jsp" %>

<%
    int id=Integer.parseInt(request.getParameter("id"));
    try {
        PreparedStatement pstmt=cn.prepareStatement("delete from batch where id=?");
    
    pstmt.setInt(1, id);
    
    int result=pstmt.executeUpdate();
    
    if(result>0){
            out.println("Batch Deleted");
    }
            else{
            out.println("Batch Not Deleted");
        }
        } catch (Exception e) {
            e.printStackTrace();
                    
        }
    
    
%>