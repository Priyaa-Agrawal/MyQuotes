
package com.myQuotes.Dao;

import com.myQuotes.model.register;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class registerConnection {
     int a=0;
    public int registerCon(register r){
        Connection con = null;
        try {
           con =mysqlConnection.getInstance().getConnection();
           PreparedStatement ps = con.prepareStatement("insert into register(name,email,phno,pass) values(?,?,?,?)");
           ps.setString(1, r.getName());
           ps.setString(2, r.getEmail());
           ps.setString(3, r.getPhone());
           ps.setString(4, r.getPassword());
                
            a = ps.executeUpdate();
            
//            PreparedStatement ps1 = con.prepareStatement("insert into mywords(email) values(?)");
//            ps1.setString(1, r.getEmail());
            
//            int b = ps1.executeUpdate();
            
//           if(rs.next()){
//               System.out.println("Succesful");
//               a=1;
//           }
//           else{
//               System.out.println("UnSuccesful");
//               a=0;
//           }
            
        } catch (Exception e) {
            e.printStackTrace();
        }
    
      return a;
    }
    
}
