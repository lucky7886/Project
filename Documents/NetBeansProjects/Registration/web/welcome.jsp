<%-- 
    Document   : welcome
    Created on : 23-Feb-2020, 11:43:25
    Author     : Dell
--%>

<%@page import="Test.person"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            person  per = (person)session.getAttribute("person");
            String islogin = (String) session.getAttribute("loggedin");
            if (per==null){
                response.sendRedirect("reg.jsp");
                return;
            }
            if (islogin==null ||  !islogin.equals("yes"))
            {
                response.sendRedirect("login2.jsp");
                return;
            }
           
            %>
        <h1>Welcome <%=per.getName()%> </h1>
       
    </body>
</html>
