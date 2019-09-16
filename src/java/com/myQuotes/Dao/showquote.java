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
    
    public ArrayList<String>[] display(){
        
        ArrayList<String> list[] = new ArrayList[5];
        ArrayList l1 = new ArrayList();
        ArrayList l2 = new ArrayList();
        ArrayList l3 = new ArrayList();

        Connection con = null;
        try {
           con =mysqlConnection.getInstance().getConnection();
           PreparedStatement ps = con.prepareStatement("select quotes,name,likess from mywords");

            ResultSet rs = ps.executeQuery();
         
            while(rs.next()){
                l1.add(rs.getString(1));
                l2.add(rs.getString(2));
                l3.add(rs.getString(3));
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        }
    list[0] = l1;
    list[1] = l2;
    list[2] = l3;
      return list;
    }
    
        public List<String> display1(String e){
        List<String> list1=new ArrayList<String>();
        Connection con = null;
        try {
           con =mysqlConnection.getInstance().getConnection();
           PreparedStatement ps = con.prepareStatement("select quotes from mywords where email=? ");
           ps.setString(1,e);
           
            ResultSet rs = ps.executeQuery();
         
            while(rs.next()){
                list1.add(rs.getString(1));
            }
            
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    
      return list1;
    }
    
}

  
