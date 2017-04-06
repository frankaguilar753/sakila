<%-- 
    Document   : index
    Created on : 06/04/2017, 06:12:33 PM
    Author     : Koyomi
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="bd.Conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%!
            Connection conn1=null;
            Statement stmt=null;
            ResultSet rs=null;
            %>
        <%
             conn1 =Conexion.getConnection();
             stmt = conn1.createStatement();
                          

        %>
    </body>
</html>
