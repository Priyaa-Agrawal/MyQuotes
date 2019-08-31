/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.myQuotes.service;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author hp
 */
@WebServlet(name = "logoutServlet", urlPatterns = {"/logoutServlet"})
public class logoutServlet extends HttpServlet {

  
 

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
           HttpSession session = request.getSession();
       
       if(session.getAttribute("email")!=null){
           session.removeAttribute("email");
           response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
           
           
           session.removeAttribute("name");
           session.invalidate();
           
           request.getRequestDispatcher("login.jsp").forward(request, response);
       }
       
       else{
       request.getRequestDispatcher("index.jsp").forward(request, response);
       }  
    }

   
}
