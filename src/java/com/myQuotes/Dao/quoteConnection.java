
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
            PreparedStatement ps1 = con.prepareStatement("insert into mywords(name,email,quotes,likess) values(?,?,?,0)");
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
    
      public int remove(int id){ 
          int b=0;
        Connection con = null;
        try {
           con = mysqlConnection.getInstance().getConnection();           
            PreparedStatement ps = con.prepareStatement("delete from mywords where qid=?");
//            ps.setString(1, qt);
//            ps.setString(2, e);
                ps.setInt(1, id);

            a = ps.executeUpdate();    
        } 
         catch (Exception ex) {
            ex.printStackTrace();
        }
    return a;
    }
    
      
       public int like(int id){
          int c=0;
        Connection con = null;
        try {
             System.out.println("Hell"); 
            con = mysqlConnection.getInstance().getConnection(); 
             System.out.println(con);
            PreparedStatement ps1 = con.prepareStatement("select quotes,name,likess from mywords where qid=?");
            System.out.println("Hell1"+ps1);
                ps1.setInt(1,id);
                System.out.println("Hell133");
                ResultSet rs = ps1.executeQuery();
                System.out.println("Hell1efwes33");
                while(rs.next()){
                String likess = rs.getString(3);
                System.out.println("likess"+likess);
                c =Integer.parseInt(likess); 
                System.out.println(c);
                c++;
                }
            PreparedStatement ps = con.prepareStatement("update mywords set likess=? where qid=? ");
            ps.setInt(1,c);
            ps.setInt(2,id);
            a = ps.executeUpdate();    
        } 
        catch (Exception ex) {
            ex.printStackTrace();
        }
    return a;
    }
    
    
    
}
