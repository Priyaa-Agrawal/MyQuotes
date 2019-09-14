<%-- 
    Document   : index
    Created on : 20 Aug, 2019, 9:34:49 PM
    Author     : hp
--%>

<%@page import="java.util.*"%>
<%@page import="com.myQuotes.Dao.showquote"%>
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
    
  <style>
      @import url(https://fonts.googleapis.com/css?family=Righteous);

      body{
    background-image: url("./image/img1.jpg");
    background-color: gray;
    height: 100%;
    background-repeat: no-repeat;
    background-size: cover;
      }
      
      h2 {
  display: inline-block;
  color:limegreen ;
  font-family: 'Righteous', serif;
  font-size: 2em; 
  text-shadow: .03em .03em 0 hsla(178, 69%, 50%,1);
  }
  
   .button {
  background-image:url("./image/like.jpeg");
  border: none;
  color: white;
  /*height: 100%;*/
  padding: 18px 20px;
  font-size: 15px;
  margin: 4px 2px;
  opacity: 1;
  transition: 0.3s;
  display: inline-block;
  text-decoration: none;
  cursor: pointer;
  background-size: cover;
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
               <a class="nav-item nav-link active " href="index.jsp">Home <span class="sr-only">(current)</span></a>
                <!--<a class="nav-item nav-link" href="login.jsp">Login</a>-->
                    <%if(session.getAttribute("email")== null){%>
                    <a class="nav-item nav-link"href="login.jsp">Login</a>
                    <%}else{%>
                    <a class="nav-item nav-link" href="quotes.jsp">Quotes</a>
                    <a class="nav-item nav-link" href="account.jsp">NewQuote</a>
                    <a class="nav-item nav-link" href="logoutServlet">Logout</a>
                    <a class="navbar-brand"  style="color: yellow">Welcome!!<br><%=session.getAttribute("name")%> </a>
                    <%}%>
              </div>
            </div>
          </nav>
              <div class="row">
        <%
            showquote show = new showquote(); 
                try{
                    ArrayList<String> list[] = new ArrayList[5];
                     list =show.display();

                for(int i=0;i<list.hashCode();i++){
                    System.out.println("a-->"+list[1].get(i)); 
        %>
     
         
          <div class="card mx-auto mt-2 " style="width: 18rem;">
              
              <div class="card-body" style="background-color: papayawhip">
                  
                  <h3 class="card-title" style="color: crimson"><u><% out.print(list[1].get(i)); %></u> ~</h3>
                <p class="card-text" style="white-space: pre-line; color: navy; font-weight: bold">
                     <%
                        out.print(list[0].get(i));
                     %> 
                     
                     <!--Likes~<span id="like"></span>-->
                  </p>
                  <form action="like" method="post">
                      <button type="submit" name="quotelike" value=<%=list[0].get(i)%> > </button>
                      
                  </form>
                
               </div>
            </div>
                       
      <%
         } }

        catch (IndexOutOfBoundsException e) { 
  
            System.out.println("Exception thrown: "
                               + e); 
        } 
      %>
          </div>    <!--</div>--> 
      
      
      
      
      

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>
