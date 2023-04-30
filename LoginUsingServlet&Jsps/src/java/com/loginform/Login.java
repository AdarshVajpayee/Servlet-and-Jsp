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
@WebServlet(name = "Login", urlPatterns = {"/Login"})
public class Login extends HttpServlet {

  @Override
  protected void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException
  {
      String uname = request.getParameter("uname");
      String pass = request.getParameter("pass");
      
      if(uname.equals("Adarsh") && pass.equals("adarsh@123"))
      {
          HttpSession session = request.getSession();
          session.setAttribute("username",uname);
          response.sendRedirect("welcome.jsp");
      }
      else{
          response.sendRedirect("login.jsp");
      }
      
   }
}
