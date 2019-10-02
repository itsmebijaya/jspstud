
<%@include file="../dbhelper.jsp"%>

<%
    int id=Integer.parseInt(request.getParameter("id"));
    String studentname=request.getParameter("studentname");
    int course=Integer.parseInt(request.getParameter("course"));
    int batch=Integer.parseInt(request.getParameter("batch"));
    String address=request.getParameter("address");
    int phone=Integer.parseInt(request.getParameter("phone"));
    
    try {
            PreparedStatement pstmt=cn.prepareStatement("update student set studentname=?,course=?,batch=?,address=?,phone=? where id=?");
            pstmt.setString(1, studentname);
            pstmt.setInt(2, course);
            pstmt.setInt(3, batch);
            pstmt.setString(4, address);
            pstmt.setInt(5, phone);
            pstmt.setInt(6, id);
            
            int result=pstmt.executeUpdate();
            
            if(result>0){
                response.sendRedirect("student.jsp?msg=Student Updated");
                
            }
            
            else{
                response.sendRedirect("student.jsp?msg=Student Not Updated");
            }
        } catch (Exception e) {
            e.printStackTrace();
            e.getMessage();
        }
%>