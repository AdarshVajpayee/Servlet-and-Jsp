package com.annotate;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/add")
public class AdddServlet extends HttpServlet {

  @Override
  public void doGet(HttpServletRequest req,HttpServletResponse res) throws IOException
  {
      int i = Integer.parseInt(req.getParameter("num1"));
      int j = Integer.parseInt(req.getParameter("num2"));
      
      int k = i+j;
      
      PrintWriter out = res.getWriter();
      out.println("<html><body bgcolor= 'red'> ");
      out.println("The sum of two numbers is : "+k);
      out.println("</body></html>");
      
      
  }
}
