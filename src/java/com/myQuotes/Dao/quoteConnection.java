
package com.myQuotes.Dao;

import com.myQuotes.model.quote;
import java.sql.Connection;
import java.sql.PreparedStatement;


public class quoteConnection {
    int a=0;
    
    public int quoteCon(quote q){
    
        Connection con = null;
        try {
            con = mysqlConnection.getInstance().getConnection();
//            PreparedStatement ps = con.prepareStatement("update mywords set quote=? where email=?");
//            ps.setString(1, q.getQuote());
//            ps.setString(2, q.getEmail());
            
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
    
    
}
