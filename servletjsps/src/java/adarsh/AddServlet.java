package adarsh;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AddServlet extends HttpServlet {
    
    public void service(HttpServletRequest req,HttpServletResponse res) throws IOException
    {
        int i = Integer.parseInt(req.getParameter("num1"));
        int j = Integer.parseInt(req.getParameter("num2"));
        int k = i+j;
        
        System.out.println("Result is : "+k); // prints on console.
        res.getWriter().println("Result is : "+k); // if we want to print on page.
        //       or
        //by using printWriter obj also we can print on page
        PrintWriter out = res.getWriter();
        out.println("Result is : "+k);       
    }
}
