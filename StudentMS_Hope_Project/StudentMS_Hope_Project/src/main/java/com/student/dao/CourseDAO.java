package com.student.dao;
import com.student.model.Course; import com.student.util.DBConnection; import java.sql.*; import java.util.*;
public class CourseDAO {
 public List<Course> findActiveCourses() throws SQLException { return findByStatus("ACTIVE"); }
 public List<Course> findAll() throws SQLException { List<Course> list=new ArrayList<>(); String q="SELECT course_id,course_name,status FROM courses ORDER BY course_name"; try(Connection c=DBConnection.getConnection();PreparedStatement p=c.prepareStatement(q);ResultSet r=p.executeQuery()){while(r.next())list.add(new Course(r.getInt(1),r.getString(2),r.getString(3)));} return list; }
 private List<Course> findByStatus(String st) throws SQLException { List<Course> list=new ArrayList<>(); String q="SELECT course_id,course_name,status FROM courses WHERE status=? ORDER BY course_name"; try(Connection c=DBConnection.getConnection();PreparedStatement p=c.prepareStatement(q)){p.setString(1,st);try(ResultSet r=p.executeQuery()){while(r.next())list.add(new Course(r.getInt(1),r.getString(2),r.getString(3)));}} return list; }
 public void save(Course course) throws SQLException { String q="INSERT INTO courses(course_name,status) VALUES(?,?)"; try(Connection c=DBConnection.getConnection();PreparedStatement p=c.prepareStatement(q)){p.setString(1,course.getCourseName());p.setString(2,course.getStatus());p.executeUpdate();} }
 public int countCourses() throws SQLException {try(Connection c=DBConnection.getConnection();PreparedStatement p=c.prepareStatement("SELECT COUNT(*) FROM courses WHERE status='ACTIVE'");ResultSet r=p.executeQuery()){r.next();return r.getInt(1);}}
}
