/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bd;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import static java.util.logging.Level.SEVERE;
import java.util.logging.Logger;

/**
 *
 * @author Koyomi
 */
public class Conexion{

        private static Connection conn=null;

        public static Connection getConnection(){
            if(conn==null){
                try
                {
                Class.forName("com.mysql.jdbc.Driver");
                conn=DriverManager.getConnection("jdbc:mysql://127.0.0.1/sakila","root","");
                } catch (Exception e)
                {
                    System.out.println("Conexion Mala");
                    e.printStackTrace();
                }
            }
            else{
                try{
                    if(conn.isClosed()){
                        System.out.println("Conex cerrada");
                    }else{

                    }
                }catch(SQLException ex){
                    Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex); 
                }


           
            }
            
             return conn;
        }

    
}
