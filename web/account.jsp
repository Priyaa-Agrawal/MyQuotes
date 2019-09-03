<%-- 
    Document   : account
    Created on : 31 Aug, 2019, 5:05:52 PM
    Author     : hp
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.myQuotes.service.loginServlet" %>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <title>MyQuotes</title>
  </head>
  <body>    
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <a class="navbar-brand" href="#">My Quotes!!</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                <div class="navbar-nav">
             
               <a class="nav-item nav-link active" href="index.jsp">Home <span class="sr-only">(current)</span></a>
                <!--<a class="nav-item nav-link" href="login.jsp">Login</a>-->
                    <%if(session.getAttribute("email")== null){%>
                    <a class="nav-item nav-link"href="login.jsp">Login</a>
                    <%}else{%>
                    <a class="nav-item nav-link" href="quotes.jsp">Quotes</a>
                    <a class="nav-item nav-link" href="logoutServlet">Logout</a>
                    <a class="navbar-brand"  style="color: yellow">Welcome!!<br><%=session.getAttribute("name")%> </a>
                    <%}%>
              </div>
            </div>
          </nav>

      

        <div class="container">
            <h2>Hello World!</h2>
            
            <form action="myquote" method="post">
                    <div class="form-group">
                         <input type="hidden" class="form-control" name="email" value=<%=session.getAttribute("email")%>>
                            <label for="comment">Your Quote:</label>
                            <textarea class="form-control" rows="5" placeholder="Write your Quote..." id="comment" name="quote"></textarea>
                    </div>
                            <button type="submit" class="btn btn-info">Add</button>
                </form>
        </div>
                         
          
          
          
          
          
          
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>

