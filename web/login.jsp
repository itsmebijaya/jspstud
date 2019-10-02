<%-- 
    Document   : Login
    Created on : Sep 16, 2019, 3:29:07 PM
    Author     : Bijaya Khatiwada
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <link href="bootstrap/bootstrap-4.3.1-dist/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="bootstrap/bootstrap-4.3.1-dist/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Login</h1>

        <div class="row">

            <div class="col-sm-4">
                <form method="post"action="loginv.jsp">
                    
                    <div align="left">
                        <lable class="form-label">Username:</label>
                        <input type="text"id="uname" name="uname" placeholder="Username" size="30px" class="form-control" required>

                        
                    </div>
                    
                    <div align="left">
                        <lable class="form-label">Password:</label>
                        <input type="password" id="password" name="password" placeholder="Password" size="30px" class="form-control" required><br>

                        
                    </div>
                    
                    <div align="left">
                        <input type="submit" id="submit" name="submit" value="Submit" class="btn btn-info">
                        <input type="reset" id="reset" name="reset" value="Reset" class="btn btn-warning" >

                        
                    </div>
                </form>

            </div>

            <div class="col-sm-8">
                <img src="images/Students.png" alt=""/>
            </div>
        </div>


    </body>
</html>
