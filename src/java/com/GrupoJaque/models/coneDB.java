/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.GrupoJaque.models;

import java.sql.*;
import javax.swing.JOptionPane;
/**
 *
 * @author sergi
 */
public class coneDB {
public static Connection conec=null;
public static Statement st=null;
public static ResultSet rt=null;
public static String usu;
public static String contra;
public static String host;
public static String db;
public void Conectar(){
    try {
        usu="root";
	contra="";
	host="localhost";
	db="practicagrupojaque";
	String url="jdbc:mysql://"+host+"/"+db;
        Class.forName("com.mysql.jdbc.Driver").newInstance();
	conec=DriverManager.getConnection(url,usu,contra);
    } catch (Exception e) {
    JOptionPane.showMessageDialog(null, e.toString());
    }
    
}
}
