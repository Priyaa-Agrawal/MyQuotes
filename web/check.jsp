<%-- 
    Document   : check
    Created on : 13 Sep, 2019, 7:10:45 PM
    Author     : hp
--%>


<%@page import="com.myQuotes.Dao.mysqlConnection"%>
<%@page import="java.sql.*"%>
   
    <% String e = request.getParameter("email");%>
     
    <%   
        Connection con = null;
        try {
           con =mysqlConnection.getInstance().getConnection();
           PreparedStatement ps = con.prepareStatement("select email from register where email=?");
           ps.setString(1, e);
         

            ResultSet rs = ps.executeQuery();
           if(rs.next()){
               System.out.println("Succesful");
              
               %>
               Email already exist 
               <%  
           }
           else{
               System.out.println("UnSuccesful"); %>
               <%
           }
            
        } catch (Exception ex) {
            ex.printStackTrace();
        }

    %>

    