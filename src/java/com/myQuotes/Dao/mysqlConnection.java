
package com.myQuotes.Dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class mysqlConnection  {
    private static mysqlConnection instance;
    private static Connection con;
    
    public static mysqlConnection getInstance(){
        if(instance == null){
        instance = new mysqlConnection();
        }
    return instance;
    }
    
    public static Connection getConnection(){
            if(con == null){
            try {
                String driver = "jdbc:mysql://localhost:3306/";
                String database ="myquotes";
                String username ="root";
                String pass ="1234";
                
                Class.forName("com.mysql.jdbc.Driver");
                 con = DriverManager.getConnection(driver+database,username,pass);
      
            }
            catch (Exception e) {
                System.out.println(e);
            }
        }
    return con;
    }
}
