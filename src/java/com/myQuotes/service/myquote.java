
package com.myQuotes.service;

import com.myQuotes.Dao.quoteConnection;
import com.myQuotes.model.quote;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.myQuotes.service.loginServlet;


@WebServlet(name = "myquote", urlPatterns = {"/myquote"})
public class myquote extends HttpServlet {

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    
            String words = request.getParameter("quote");
            String email = request.getParameter("email");
            String name = request.getParameter("name");
            
            
            quote q = new quote(words,email,name);
            quoteConnection qc = new quoteConnection();
            int r = qc.quoteCon(q);
            
            if (r>0) {
                request.getRequestDispatcher("index.jsp").forward(request, response);
            
        } else {
                request.getRequestDispatcher("account.jsp").forward(request, response);
        }
            
            
    
    
    
    }
}
