
<%@include file="../dbhelper.jsp" %>

<%
    int id=Integer.parseInt(request.getParameter("id"));
    String batchname=request.getParameter("batchname");
    String year=request.getParameter("year");
    
    try {
            PreparedStatement pstmt=cn.prepareStatement("update batch set batchname=?, year=? where id=?");
            pstmt.setString(1, batchname);
            pstmt.setString(2, year);
            pstmt.setInt(3, id);
            
            int rs=pstmt.executeUpdate();
            
            if(rs>0){
                out.println("Batch Updated");
            }
            
            else{
                out.println("Batch Not Updated");
            }
            
        } catch (Exception e) {
            System.out.println("Error");
            e.printStackTrace();
        }
    
%>