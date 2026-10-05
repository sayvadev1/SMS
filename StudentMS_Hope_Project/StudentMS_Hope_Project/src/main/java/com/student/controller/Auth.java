package com.student.controller;
import jakarta.servlet.http.*;
public class Auth { public static boolean loggedIn(HttpServletRequest req){HttpSession s=req.getSession(false);return s!=null&&Boolean.TRUE.equals(s.getAttribute("adminLoggedIn"));} public static void redirectLogin(HttpServletResponse resp)throws java.io.IOException{resp.sendRedirect("admin-login");} }
