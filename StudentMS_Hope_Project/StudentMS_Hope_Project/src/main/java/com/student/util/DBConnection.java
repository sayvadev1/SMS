package com.student.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
    private static final String URL = "jdbc:h2:./data/student_management;AUTO_SERVER=TRUE";
    private static final String USERNAME = "sa";
    private static final String PASSWORD = "";

    static {
        try { Class.forName("org.h2.Driver"); }
        catch (ClassNotFoundException e) { throw new RuntimeException("H2 driver not found", e); }
    }

    public static Connection getConnection() throws SQLException {
        return DriverManager.getConnection(URL, USERNAME, PASSWORD);
    }
}
