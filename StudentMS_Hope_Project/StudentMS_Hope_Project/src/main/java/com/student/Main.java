package com.student;

import com.student.controller.*;
import com.student.util.DatabaseInitializer;
import org.apache.catalina.Context;
import org.apache.catalina.startup.Tomcat;

public class Main {
    public static void main(String[] args) throws Exception {
        DatabaseInitializer.initialize();

        Tomcat tomcat = new Tomcat();
        tomcat.setPort(8081);
        tomcat.getConnector();

        Context context = tomcat.addWebapp("/student-management-system", new java.io.File("src/main/webapp").getAbsolutePath());

        Tomcat.addServlet(context, "adminLogin", new AdminLoginServlet());
        context.addServletMappingDecoded("/admin-login", "adminLogin");
        Tomcat.addServlet(context, "dashboard", new DashboardServlet());
        context.addServletMappingDecoded("/dashboard", "dashboard");
        Tomcat.addServlet(context, "students", new StudentListServlet());
        context.addServletMappingDecoded("/students", "students");
        Tomcat.addServlet(context, "addStudent", new AddStudentServlet());
        context.addServletMappingDecoded("/add-student", "addStudent");
        Tomcat.addServlet(context, "publicRegistration", new PublicRegistrationServlet());
        context.addServletMappingDecoded("/register-student", "publicRegistration");
        Tomcat.addServlet(context, "register", new RegisterServlet());
        context.addServletMappingDecoded("/register", "register");
        Tomcat.addServlet(context, "registrationSuccess", new RegistrationSuccessServlet());
        context.addServletMappingDecoded("/registration-success", "registrationSuccess");
        Tomcat.addServlet(context, "marks", new MarksServlet());
        context.addServletMappingDecoded("/marks", "marks");
        Tomcat.addServlet(context, "marksheet", new MarksheetServlet());
        context.addServletMappingDecoded("/marksheet", "marksheet");
        Tomcat.addServlet(context, "courses", new CourseServlet());
        context.addServletMappingDecoded("/courses", "courses");
        Tomcat.addServlet(context, "reports", new ReportsServlet());
        context.addServletMappingDecoded("/reports", "reports");
        Tomcat.addServlet(context, "settings", new SettingsServlet());
        context.addServletMappingDecoded("/settings", "settings");
        Tomcat.addServlet(context, "logout", new LogoutServlet());
        context.addServletMappingDecoded("/logout", "logout");

        tomcat.start();
        System.out.println("Student Management System running at http://localhost:8081/student-management-system/");
        System.out.println("Admin login: admin / admin123");
        tomcat.getServer().await();
    }
}
