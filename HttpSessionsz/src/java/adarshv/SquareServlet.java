package adarshv;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class SquareServlet extends HttpServlet {
    @Override
    public void doGet(HttpServletRequest req,HttpServletResponse res) throws IOException
    {
        HttpSession session = req.getSession();
        int k = (int) session.getAttribute("k");
        k = k*k;
        PrintWriter out = res.getWriter();
        out.println("Result is = "+k);
    }
}
// We can use session.removeAttribute("k");

