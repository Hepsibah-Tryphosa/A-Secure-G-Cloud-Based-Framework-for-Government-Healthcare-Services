/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gcloud.db;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Poojitha
 */
public class DBConnection {
    public static Connection con = null;
    public static Connection getDBConnection(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/gcloud","root","root");
            if(con!=null){
            return con;
            }else{
                System.out.println("Connection object is Null");
            }
        } catch (Exception e) {
            System.out.println("DB Class Error");
            e.printStackTrace();
        }finally{
            try {
                //con.close();
            } catch (Exception e) {
            }
            return con;
        }
    }
    
}
