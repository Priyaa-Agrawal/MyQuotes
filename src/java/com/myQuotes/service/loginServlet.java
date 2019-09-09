
package com.myQuotes.service;

import com.myQuotes.Dao.loginConnection;
import com.myQuotes.Dao.welcome;
import com.myQuotes.model.login;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "loginServlet", urlPatterns = {"/loginServlet"})
public class loginServlet extends HttpServlet {
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
     
           HttpSession session = request.getSession(true);
            String email = request.getParameter("user");
            String password = request.getParameter("password");
            
            

            
            login log = new login(email, password);
            loginConnection lc = new loginConnection();
            int result = lc.loginCon(log);
        
        if (result >0) {
            welcome wc = new welcome();
            String name = wc.welcome(log);
            session.setAttribute("name", name);  
            session.setAttribute("email",email);
            request.getRequestDispatcher("index.jsp").forward(request, response);
        } 
        
        else {
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
        
        
        
    }
}
