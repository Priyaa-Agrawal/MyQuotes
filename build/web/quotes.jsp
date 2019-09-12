<%-- 
    Document   : quote
    Created on : 3 Sep, 2019, 12:28:53 AM
    Author     : hp
--%>



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
          int count =0;
              String e = session.getAttribute("email").toString();
            showquote show = new showquote();
             List<String> list1=show.display1(e);
             for(int i=0;i<list1.size();i++){
                 count++;
        %>
          <div class="card mx-auto my-3" style="width: 18rem;">
            <div class="card-body">
                <h4 class="card-title" style="color: crimson">Quote<% out.print(i+1);%></h4>
                 <p class="card-text" style="white-space: pre-line;color: navy"><b>
                     <%
                        out.print(list1.get(i));
                     %>
                     
                     </b>     
                </p>
            </div>
                     </div>
      <%
          }
      %>
      
      </div>
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

