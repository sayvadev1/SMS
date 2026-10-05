package com.student.controller;
import com.student.dao.StudentDAO; import jakarta.servlet.*; import jakarta.servlet.http.*; import java.io.IOException;
public class StudentListServlet extends HttpServlet{protected void doGet(HttpServletRequest req,HttpServletResponse resp)throws ServletException,IOException{if(!Auth.loggedIn(req)){Auth.redirectLogin(resp);return;}try{req.setAttribute("students",new StudentDAO().findAll());req.getRequestDispatcher("/students.jsp").forward(req,resp);}catch(Exception e){throw new ServletException(e);}}}
