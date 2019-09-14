
package com.myQuotes.service;

import com.myQuotes.Dao.quoteConnection;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author hp
 */
@WebServlet(name = "removeQuote", urlPatterns = {"/removeQuote"})
public class removeQuote extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
          
        String quote = request.getParameter("quote");
        String e = request.getParameter("email");
        quoteConnection q = new quoteConnection();
        int r = q.remove(quote,e);
        
        if (r>0) {
            request.getRequestDispatcher("quotes.jsp").forward(request, response);
        } else {
            request.getRequestDispatcher("quotes.jsp").forward(request, response);
        }
    }
}
  





