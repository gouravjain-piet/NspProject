<%-- 
    Document   : index
    Created on : 30 Dec, 2022, 1:25:32 PM
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body bgcolor="grey">
        
        <form action="mailProcess.jsp" method="post">
            
            To:<input type="text" name="mail" value="Enter the mail_id"><br><br>
            Subject:<input type="text" name="sub" value="Enter the subject"><br><br>
            
            Message:<input type="text" name="mess">
            
            <input type="submit" value="send">
            <input type="reset" value="reset">
        </form>
    </body>
</html>
