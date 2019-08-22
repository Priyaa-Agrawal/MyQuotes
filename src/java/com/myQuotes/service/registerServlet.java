
package com.myQuotes.service;

import com.myQuotes.Dao.registerConnection;
import com.myQuotes.model.register;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "registerServlet", urlPatterns = {"/registerServlet"})
public class registerServlet extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String password = request.getParameter("password");
        
        register reg = new register(name, email, phone, password);
        registerConnection rc = new registerConnection();
        int r = rc.registerCon(reg);
        
        if (r>0) {
            request.getRequestDispatcher("login.jsp").forward(request, response);
        } else {
            request.getRequestDispatcher("register.jsp").forward(request, response);
        }
        
    }
}
