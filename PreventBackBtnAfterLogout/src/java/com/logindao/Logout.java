package com.logindao;



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
        session.invalidate();
        response.setHeader("Pragma","no-cache");
        response.setHeader("Cache-Control","no-store");
        response.setHeader("Expires", "0");
        response.setDateHeader("Expires", -1);
        response.sendRedirect("login.jsp");
    }
}
