<%

    String uname=request.getParameter("uname");
    String password=request.getParameter("password");
    
    if(uname.equals("Bijaya") && password.equals("Norway123")){
        response.sendRedirect("index.jsp");
    }
    
    else{
        out.println("Invalid Login");
    }
%>