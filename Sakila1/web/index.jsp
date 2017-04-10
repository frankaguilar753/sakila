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
        <%!
            Connection conn1=null;
            Statement stmt=null;
            ResultSet rs=null;
                       
            
        
            %>
            <%
            conn1 =Conexion.getConnection();
            try{
            stmt = conn1.createStatement();
            rs = stmt.executeQuery("SELECT CONCAT(customer.last_name, ', ', customer.first_name) AS customer,\n"
                            + "    address.phone, film.title\n"
                            + "    FROM rental INNER JOIN customer ON rental.customer_id = customer.customer_id\n"
                            + "    INNER JOIN address ON customer.address_id = address.address_id\n"
                            + "    INNER JOIN inventory ON rental.inventory_id = inventory.inventory_id\n"
                            + "    INNER JOIN film ON inventory.film_id = film.film_id\n"
                            + "    WHERE rental.return_date IS NULL\n"
                            + "    AND rental_date + INTERVAL film.rental_duration DAY < CURRENT_DATE()\n"
                            + "    LIMIT 5;");
            
            }catch(Exception e){
                
            }
          
              
              while(rs.next()){
                 out.println("<p>");
                 out.println(rs.getString(1)+"&nbsp&nbsp");
                 out.println(rs.getString(2)+"&nbsp&nbsp");
                 out.println(rs.getString(3)+"&nbsp&nbsp");
                 out.println("</p>");
              } 
               

        %>
    </body>
</html>
