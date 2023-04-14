package com.jstl_tut;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author vajpa
 */
@WebServlet("/DemoServlet.java")
public class DemoServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request,HttpServletResponse response) throws IOException, ServletException {
        List<Student> studs = Arrays.asList(new Student(1,"Abhay"),new Student(2,"Adarsh"),new Student(3,"Aditi"));
        request.setAttribute("students",studs);
        RequestDispatcher rd = request.getRequestDispatcher("display.jsp");
        rd.forward(request,response);
    }
}
