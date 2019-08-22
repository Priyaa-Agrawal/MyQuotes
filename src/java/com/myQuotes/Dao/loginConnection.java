
package com.myQuotes.Dao;

import com.myQuotes.model.login;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class loginConnection {
        int a=0;
    public int loginCon(login l){
        Connection con = null;
        try {
           con =mysqlConnection.getInstance().getConnection();
           PreparedStatement ps = con.prepareStatement("select email,pass from register where email=? and pass=? ");
           ps.setString(1, l.getEmail());
           ps.setString(2, l.getPassword());

            ResultSet rs = ps.executeQuery();
           if(rs.next()){
               System.out.println("Succesful");
               a=1;
           }
           else{
               System.out.println("UnSuccesful");
               a=0;
           }
            
        } catch (Exception e) {
            e.printStackTrace();
        }
    
      return a;
    }
    
}
