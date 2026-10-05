package com.student.dao;
import com.student.util.DBConnection; import java.sql.*;
public class AdminDAO {
 public boolean authenticate(String username,String password)throws SQLException{String q="SELECT COUNT(*) FROM admin_settings WHERE username=? AND password=?";try(Connection c=DBConnection.getConnection();PreparedStatement p=c.prepareStatement(q)){p.setString(1,username);p.setString(2,password);try(ResultSet r=p.executeQuery()){r.next();return r.getInt(1)>0;}}}
 public String getName()throws SQLException{try(Connection c=DBConnection.getConnection();PreparedStatement p=c.prepareStatement("SELECT admin_name FROM admin_settings WHERE admin_id=1");ResultSet r=p.executeQuery()){return r.next()?r.getString(1):"Admin";}}
 public String getPassword()throws SQLException{try(Connection c=DBConnection.getConnection();PreparedStatement p=c.prepareStatement("SELECT password FROM admin_settings WHERE admin_id=1");ResultSet r=p.executeQuery()){return r.next()?r.getString(1):"admin123";}}
 public String getUsername()throws SQLException{try(Connection c=DBConnection.getConnection();PreparedStatement p=c.prepareStatement("SELECT username FROM admin_settings WHERE admin_id=1");ResultSet r=p.executeQuery()){return r.next()?r.getString(1):"admin";}}
 public void update(String name,String username,String password)throws SQLException{String q="UPDATE admin_settings SET admin_name=?,username=?,password=? WHERE admin_id=1";try(Connection c=DBConnection.getConnection();PreparedStatement p=c.prepareStatement(q)){p.setString(1,name);p.setString(2,username);p.setString(3,password);p.executeUpdate();}}
}
