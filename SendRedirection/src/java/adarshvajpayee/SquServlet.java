package adarshvajpayee;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SquServlet extends HttpServlet {
    
    @Override
    public void doGet(HttpServletRequest req,HttpServletResponse res) throws IOException
    {
        int k = Integer.parseInt(req.getParameter("k"));
        k = k*k;
        
        PrintWriter out = res.getWriter();
        out.println("Result is : "+k);
    }
}
