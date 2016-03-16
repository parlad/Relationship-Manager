/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.neupane.relationship.API;

import com.neupane.relationship.system.Controller;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author parlad
 */
@WebServlet(name = "login", urlPatterns = "/login/*")
public class LoginController extends Controller {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("login.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
   
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        if (password.equalsIgnoreCase("admin") && email.equalsIgnoreCase("admin@gmail.com")) {
            
            request.getSession().setAttribute("loggedin", true);
            response.sendRedirect( request.getContextPath()+"/personal");
            
        } else {
            response.sendRedirect( request.getContextPath()+"/login?error");
        }
    }

}
