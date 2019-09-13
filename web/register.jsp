<%-- 
    Document   : register
    Created on : 20 Aug, 2019, 9:36:14 PM
    Author     : hp
--%>

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

        body{
      background-image: url("./image/bg2.jpg");
      background-color: gray;
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
  
    </style>
    <script src="https://unpkg.com/axios/dist/axios.min.js"></script>
    <script>
        function check(){
            var email = document.getElementById('email').value;
            
            axios.get('/MyQuotes/check.jsp?email='+email)
                    .then(res=>{
                        console.log(res);
                document.getElementById('result').innerHTML = res.data;
            })
                    .catch(e=>{
                        console.log(e);
            })
           
        }
    </script>
  </head>
  
  <body>  
      
      
      
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
               <a class="navbar-brand" href="index.jsp"><h2>My Quotes!!</h2></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
              <div class="navbar-nav  ml-auto">
                <a class="nav-item nav-link " href="index.jsp">Home <span class="sr-only">(current)</span></a>
                <a class="nav-item nav-link active" href="login.jsp">Login</a>
              </div>
            </div>
          </nav>


          <div class="container mx-3 mt-4">
              <h3 style="color: crimson; font-weight: bold">Create your Account</h3>
       
          <div class="row">
              <div class="col-md-6">

                  <form action="registerServlet" method="post">    
                            <div class="form-group mx-3 mt-4">
                                    <label >UserName</label>
                                    <input type="text" class="form-control" name="name"  placeholder="name" required="required">
                                </div>
                          
                             <div class="form-group mx-3 mt-2">
                                    <label >Email address</label>
                                    <input id="email" type="email" class="form-control" name="email"  placeholder="name@example.com" onblur="check()" required="required">
                                </div>
                      <div id="result" style="color: red; font-weight: bold" ></div>
                            <div class="form-group mx-3 mt-2">
                                    <label >Contact no.</label>
                                    <input type="text" class="form-control" name="phone"  placeholder="contact no." required="required">
                                </div>
                             <div class="form-group mx-3 mt-2">
                                    <label >Password</label>
                                    <input type="password" class="form-control" name="password"  placeholder="password" required="required">
                              </div>
                          
                              <div class="text-center">
                              <div class="form-group mx-3 mt-2">
                                  <button type="submit" class="btn btn-success btn-lg">Confirm</button>
                                  <button type="submit" class="btn btn-primary " onclick="location.href='login.jsp'">Login</button>
                              </div>
                            </div>
                           
                      </form>
              </div>
          </div>
</div>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>