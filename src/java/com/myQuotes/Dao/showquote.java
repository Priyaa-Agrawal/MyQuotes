/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.myQuotes.Dao;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author hp
 */
public class showquote {
    
    
     String a=null;
    public String display(){
        Connection con = null;
        try {
           con =mysqlConnection.getInstance().getConnection();
           PreparedStatement ps = con.prepareStatement("select quote from mywords");
           //ps.setString(1,l.getEmail());
            ResultSet rs = ps.executeQuery();
         
           if(rs.next()){
               
               System.out.println("Succesful");
               a=rs.getString(1);
           }
           else{
               System.out.println("UnSuccesful");
              
           }
            
        } catch (Exception e) {
            e.printStackTrace();
        }
    
      return a;
    }
    
}

    

