/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.GrupoJaque.models;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author sergi
 */
public class Logueo {
    
    String driver, url, uss, contra;
    
    public Logueo(){
        driver="com.mysql.jdbc.Driver";
        url="jdbc:mysql://localhost/practicagrupojaque";
        uss="root";
        contra="";
        }
    
    
      public int logear(String us, String ps){
       Connection conn;
       PreparedStatement pst;
       ResultSet rs;
       int consulta=0;
       String sql="SELECT count(*) FROM `usuario` WHERE username = '"+us+"' and pass = '"+ps+"'";
  
       try {
           Class.forName(this.driver);
           conn = (Connection) DriverManager.getConnection(           
           this.url,
           this.uss,
           this.contra);

           
           pst=(PreparedStatement) conn.prepareStatement(sql);
           rs=pst.executeQuery();
           
           while(rs.next()){
               consulta=rs.getInt(1);
           }
           conn.close();
       } catch (ClassNotFoundException | SQLException e) {
       }
       
       return consulta;
   }
}
