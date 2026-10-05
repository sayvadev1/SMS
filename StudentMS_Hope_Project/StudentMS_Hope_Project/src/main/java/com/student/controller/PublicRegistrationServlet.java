package com.student.controller;
import com.student.dao.CourseDAO; import jakarta.servlet.*; import jakarta.servlet.http.*; import java.io.IOException;
public class PublicRegistrationServlet extends HttpServlet{protected void doGet(HttpServletRequest req,HttpServletResponse resp)throws ServletException,IOException{try{req.setAttribute("courses",new CourseDAO().findActiveCourses());req.getRequestDispatcher("/registration.jsp").forward(req,resp);}catch(Exception e){throw new ServletException(e);}}}
