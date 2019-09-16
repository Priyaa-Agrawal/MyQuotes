
package com.myQuotes.service;

import com.myQuotes.Dao.quoteConnection;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "like", urlPatterns = {"/like"})
public class like extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
     
        int id = Integer.parseInt(request.getParameter("id"));
        quoteConnection qc = new quoteConnection();
        int r = qc.like(id);
        if (r>0) {
            request.getRequestDispatcher("index.jsp").forward(request, response);
        } else {
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }
        
        
    }

  

}
