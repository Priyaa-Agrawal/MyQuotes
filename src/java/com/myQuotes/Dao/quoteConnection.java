
package com.myQuotes.Dao;

import com.myQuotes.model.quote;
import java.sql.*;
//import java.sql.PreparedStatement;
import java.sql.ResultSet;


public class quoteConnection {
    int a=0;
    
    public int quoteCon(quote q){
    
        Connection con = null;
        try {
            con = mysqlConnection.getInstance().getConnection();
            
            PreparedStatement ps1 = con.prepareStatement("insert into mywords(name,email,quotes) values(?,?,?)");

            ps1.setString(1,q.getName());
            ps1.setString(2,q.getEmail());
            ps1.setString(3,q.getQuote());
            
             a = ps1.executeUpdate();
             
        } 

        catch (Exception e) {
            e.printStackTrace();
        }

    return a;
    
    }
    
      public int remove(String qt,String e){
          int b=0;
        Connection con = null;
        try {
            con = mysqlConnection.getInstance().getConnection();
            
            PreparedStatement ps = con.prepareStatement("delete from mywords where quotes=? and email=?");
            ps.setString(1, qt);
            ps.setString(2, e);
            a = ps.executeUpdate();    
        } 
         catch (Exception ex) {
            ex.printStackTrace();
        }
        
    return a;
    }
    
      
       public int like(String q){
          int c=0;
        Connection con = null;
        try {
            con = mysqlConnection.getInstance().getConnection();
            
            PreparedStatement ps1 = con.prepareStatement("select likess from mywords where quotes=?");
                ps1.setString(1, q);
                ResultSet rs = ps1.executeQuery();
                int like = rs.getInt(1);
                like++;
                
            PreparedStatement ps = con.prepareStatement("update mywords set likess=? where quotes=? ");
            ps.setInt(1,like);
            ps.setString(2, q);
            c = ps.executeUpdate();    
        } 
        catch (Exception ex) {
            ex.printStackTrace();
        }
        
    return c;
    }
    
    
    
}
