package com.adi;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MyServlet extends HttpServlet {

   @Override
   protected void doGet(HttpServletRequest req,HttpServletResponse res) throws IOException
   {
       PrintWriter out = res.getWriter();
       out.print("Hi,");
       
       ServletContext ctx = getServletContext();
       String str = ctx.getInitParameter("name");
       out.print(str);
       
       out.println("\nAfter using Servlet Context.");
       out.println("\n i.) If you have multiple Servlet which shares same value go for ServerContext.");
       out.println("\n ii.) If you have different values for multiple Servlet then go to servlet config.");
       
       
       PrintWriter out1 = res.getWriter();
       out1.print("\nHi,");
       
       ServletConfig ctx2 = getServletConfig();
       String str1 = ctx2.getInitParameter("name");
       out1.print(str1);
       
       
       out1.println("\nAfter using Servlet Config.");
       out1.println("\nIn the Web.xml if we change some part of the code See Changes in Web.xml like init-param tag,name inside init-param with value param-name(Gnanesh Auti) gets more preferences then Adarsh Vajpayee.");
   }
}

