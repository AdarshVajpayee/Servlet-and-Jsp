package com.loginform;

import java.io.IOException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author vajpa
 */
@WebServlet(name = "Logout", urlPatterns = {"/Logout"})
public class Logout extends HttpServlet {

    protected void doGet(HttpServletRequest request,HttpServletResponse response) throws IOException
    {
        HttpSession session = request.getSession();
        session.removeAttribute("uname");
        response.sendRedirect("login.jsp");
    }
}
