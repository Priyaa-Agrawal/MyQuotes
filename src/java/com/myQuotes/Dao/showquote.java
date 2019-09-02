/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.myQuotes.Dao;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author hp
 */
public class showquote {
    
    
     String a;
    public List<String> display(){
        List<String> list=new ArrayList<String>();
        Connection con = null;
        try {
           con =mysqlConnection.getInstance().getConnection();
           PreparedStatement ps = con.prepareStatement("select quote from mywords");
           
            ResultSet rs = ps.executeQuery();
         
            while(rs.next()){
                list.add(rs.getString(1));
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        }
    
      return list;
    }
    
}

    

