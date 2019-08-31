
package com.myQuotes.Dao;

import com.myQuotes.model.login;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


public class welcome {
     String a=null;
    public String welcome(login l){
        Connection con = null;
        try {
           con =mysqlConnection.getInstance().getConnection();
           PreparedStatement ps = con.prepareStatement("select name from register where email=?");
           ps.setString(1,l.getEmail());
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
