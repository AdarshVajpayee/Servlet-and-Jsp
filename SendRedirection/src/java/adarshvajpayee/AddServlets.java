package adarshvajpayee;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AddServlets extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest req,HttpServletResponse res) throws IOException
    {
        int i = Integer.parseInt(req.getParameter("num1"));
        int j = Integer.parseInt(req.getParameter("num2"));
        
        int k = i+j;
        
        res.sendRedirect("sq?k="+k); //URL Rewriting (one of the method in session management.)
    }
}

/*

Session Management involves 3 methods: 

i.) Session
ii.) URL Rewriting
iii.) Cookies

*/