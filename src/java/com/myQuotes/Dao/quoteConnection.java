
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
            
            PreparedStatement ps1 = con.prepareStatement("insert into mywords(email,quote,name) values(?,?,?)");

            ps1.setString(1,q.getEmail());
            ps1.setString(2,q.getQuote());
            ps1.setString(3,q.getName());
             a = ps1.executeUpdate();
             
        } 

        catch (Exception e) {
            e.printStackTrace();
        }

    return a;
    
    }
    
    
}
