<%-- 
    Document   : myquotes
    Created on : 15 Sep, 2019, 8:42:47 PM
    Author     : hp
--%>




<%@page import="java.sql.*"%>
<%@page import="com.myQuotes.Dao.mysqlConnection"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.myQuotes.Dao.showquote"%>
<%@page import="com.myQuotes.service.loginServlet" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>




<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <title>MyQuotes</title>
        
  <style>
      
      @import url(https://fonts.googleapis.com/css?family=Righteous);

  body {
       background-image: url("./image/img1.jpg");
    background-color: gray;
    height: 100%;
    background-repeat: no-repeat;
    background-size: cover;
    text-align: center;
    }


h2 {
  display: inline-block;
  color:limegreen ;
  font-family: 'Righteous', serif;
  font-size: 2em; 
  text-shadow: .03em .03em 0 hsla(178, 69%, 50%,1);
  }
  
  h3{
  display: inline-block;
  color:gold ;
  font-family: 'Righteous', serif;
  font-size: 2em; 
  text-shadow: .03em .03em 0 hsla(357, 69%, 50%,1); 
  } 

  </style>
  </head>
  <body>    
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <a class="navbar-brand" href="index.jsp"><h2>My Quotes!!</h2></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
    <div class="navbar-nav ml-auto">
             
               <a class="nav-item nav-link " href="index.jsp">Home <span class="sr-only">(current)</span></a>
                <!--<a class="nav-item nav-link" href="login.jsp">Login</a>-->
                    <%if(session.getAttribute("email")== null){%>
                    <a class="nav-item nav-link"href="login.jsp">Login</a>
                    <%}else{%>
                    <a class="nav-item nav-link active" href="quotes.jsp">Quotes</a>
                    <a class="nav-item nav-link" href="account.jsp">NewQuote</a>
                    <a class="nav-item nav-link" href="logoutServlet">Logout</a>
                    <%}%>
              </div>
            </div>
          </nav>
              
           
        <div class="row">
                    
      <% 
              String e = session.getAttribute("email").toString();
            int count=0;
             Connection con = null;
        try {
            System.out.println("email->"+e); 
           con =mysqlConnection.getInstance().getConnection();
           PreparedStatement ps = con.prepareStatement("select quotes,qid from mywords where email=? ");
           ps.setString(1,e);
           
            ResultSet rs = ps.executeQuery();
         
            while(rs.next()){
                String q = rs.getString(1);
                int id = rs.getInt("qid");
                System.out.println(id);
                count++;
        %>
  <div class="card mx-auto my-3" style="width: 18rem;">
            <div class="card-body">
                <h4 class="card-title" style="color: saddlebrown; font-weight: bold;">Quote<% out.print(count);%></h4>
                 <p class="card-text" style="white-space: pre-line;color: navy"><b>
                     <%
                        out.print(q);
                     %>
                     
                     </b>     
                </p>
                
                 <form action="removeQuote" method="post">
                    
                    <input type="hidden" class="form-control" name="id" value=<%=id%>>
                    
                    <!--<button type="submit" class="btn btn-danger btn-sm">Remove</button>-->
                    
                    
                    <!-- Button trigger modal -->
                    <button type="button" class="btn btn-danger btn-sm" data-toggle="modal" data-target="#exampleModal">Remove</button>

                            <!-- Modal -->
                            <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                              <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                  <div class="modal-header">
                                    <h4 class="modal-title" id="exampleModalLabel" style="color: crimson; font-weight: bold; font-size: x-large;">Warning</h4>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                      <span aria-hidden="true">&times;</span>
                                    </button>
                                  </div>
                                    <div class="modal-body" style="font-weight: bold; font-size: larger">
                                    Are you sure you want to delete ?
                                  </div>
                                  <div class="modal-footer">
                                    <button type="button" class="btn btn-warning btn-lg" data-dismiss="modal">No</button>
                                    <button type="submit" class="btn btn-primary btn-lg">Yes</button>
                                  </div>
                                </div>
                              </div>
                            </div>
                    
                </form>
                
            </div>
                     </div>
      <%
          }
      %>
      
      </div>

        <%    }
            
        catch (Exception ex) {
            ex.printStackTrace();
        }
      %>
        
      <div>
                   <h3 data-shadow='Total Quotes: '>      
                       Total Quotes: 
                      <%
                      out.print(count);
                      %>
                   </h3>

                  
              </div>
       
      
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>
