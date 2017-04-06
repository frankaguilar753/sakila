/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bd;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Koyomi
 */
public class Conexion{
        static String user="root";
        static String pass="";
        static String bbdd="sakila";
        static String ipServer="localhost";
        static String urlCon="jdbc:mysql://"+ipServer+"/"+bbdd;

        static Connection conn;

        public static Connection getConnection(){
        if(conn==null){
        try
        {
        Class.forName("com.mysql.jdbc.Driver");
        } catch (Exception e)
        {
        e.printStackTrace();
        }
        try {
        conn=DriverManager.getConnection(urlCon,user, pass);
        } catch (SQLException ex) {

        ex.printStackTrace();
        }
        return conn;
        }
        else{
        return conn;
        }
}

    
}
