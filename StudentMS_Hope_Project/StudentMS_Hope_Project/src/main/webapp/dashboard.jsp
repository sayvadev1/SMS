<%@ page contentType="text/html;charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><head><title>Dashboard - Student Management</title><link rel="stylesheet" href="css/style.css"></head>
<body>
<aside class="sidebar"><jsp:include page="/sidebar.jsp" /></aside>
<main class="main">
  <header class="topbar">
    <div><span class="eyebrow">ADMIN CONSOLE</span><h1>Dashboard</h1><p>Welcome back to your Student Management System</p></div>
    <div class="profile">
      <div class="avatar"><%= session.getAttribute("adminName") != null && !session.getAttribute("adminName").toString().isBlank() ? session.getAttribute("adminName").toString().substring(0,1).toUpperCase() : "A" %></div>
      <div><b><%=session.getAttribute("adminName")%></b><small>Administrator</small></div>
    </div>
  </header>

  <section class="hero">
    <div class="hero-content">
      <span class="eyebrow" style="color:#d9bd59">STUDENT MANAGEMENT SYSTEM</span>
      <h2>Manage your academic records with ease.</h2>
      <p>Students, Courses, Marks and Results- all in one place!</p>
    </div>
    <div class="hero-icon" aria-hidden="true"><svg viewBox="0 0 24 24"><path d="M12 3 3 7.5l9 4.5 6.8-3.4V14h2V7.5L12 3Zm-5 10.2V17c0 2 2.2 3.5 5 3.5s5-1.5 5-3.5v-3.8l-5 2.5-5-2.5Z"/></svg></div>
  </section>

  <section class="stats">
    <div class="stat"><div class="stat-icon blue"><svg viewBox="0 0 24 24"><path d="M16 20v-1.5c0-2.2-2-4-4.5-4S7 16.3 7 18.5V20h9ZM11.5 12a3 3 0 1 0 0-6 3 3 0 0 0 0 6Z"/></svg></div><div><span>Total Students</span><strong><%=request.getAttribute("totalStudents")%></strong><small>Registered students</small></div></div>
    <div class="stat"><div class="stat-icon green"><svg viewBox="0 0 24 24"><path d="m9.2 16.6-4.3-4.3 1.4-1.4 2.9 2.9 8-8 1.4 1.4-9.4 9.4Z"/></svg></div><div><span>Active Students</span><strong><%=request.getAttribute("activeStudents")%></strong><small>Currently active</small></div></div>
    <div class="stat"><div class="stat-icon red"><svg viewBox="0 0 24 24"><path d="M11 5h2v9h-2V5Zm0 11h2v2h-2v-2Z"/></svg></div><div><span>Inactive Students</span><strong><%=request.getAttribute("inactiveStudents")%></strong><small>Need attention</small></div></div>
    <div class="stat"><div class="stat-icon gold"><svg viewBox="0 0 24 24"><path d="M4 4h6v6H4V4Zm10 0h6v6h-6V4ZM4 14h6v6H4v-6Zm10 0h6v6h-6v-6Z"/></svg></div><div><span>Total Courses</span><strong><%=request.getAttribute("totalCourses")%></strong><small>Available courses</small></div></div>
  </section>

  <div class="section-heading"><div><h2>Quick Actions</h2><p>Common academic and administrative tasks</p></div></div>
  <section class="quick-grid">
    <a href="students" class="quick"><span class="quick-icon"><svg viewBox="0 0 24 24"><path d="M16 20v-1.5c0-2.2-2-4-4.5-4S7 16.3 7 18.5V20h9ZM11.5 12a3 3 0 1 0 0-6 3 3 0 0 0 0 6Z"/></svg></span><div><b>View All Students</b><small>Browse student records</small></div><i>→</i></a>
    <a href="add-student" class="quick"><span class="quick-icon"><svg viewBox="0 0 24 24"><path d="M11 5h2v6h6v2h-6v6h-2v-6H5v-2h6V5Z"/></svg></span><div><b>Add New Student</b><small>Create a student record</small></div><i>→</i></a>
    <a href="marks" class="quick"><span class="quick-icon"><svg viewBox="0 0 24 24"><path d="M5 4h14a2 2 0 0 1 2 2v12a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V6a2 2 0 0 1 2-2Zm2 4v2h10V8H7Zm0 4v2h7v-2H7Zm0 4v1h4v-1H7Z"/></svg></span><div><b>Enter Marks</b><small>Add or update marks</small></div><i>→</i></a>
    <a href="marksheet" class="quick"><span class="quick-icon"><svg viewBox="0 0 24 24"><path d="M6 3h9l4 4v14H6a2 2 0 0 1-2-2V5c0-1.1.9-2 2-2Zm8 1.5V8h3.5L14 4.5ZM8 11h8V9H8v2Zm0 4h8v-2H8v2Zm0 4h5v-2H8v2Z"/></svg></span><div><b>Generate Marksheet</b><small>View a student's result</small></div><i>→</i></a>
    <a href="courses" class="quick"><span class="quick-icon"><svg viewBox="0 0 24 24"><path d="M4 5a2 2 0 0 1 2-2h13v15H6a2 2 0 0 0-2 2V5Zm2 0v11h11V5H6Z"/></svg></span><div><b>Manage Courses</b><small>Add academic courses</small></div><i>→</i></a>
    <a href="settings" class="quick"><span class="quick-icon"><svg viewBox="0 0 24 24"><path d="m19.4 13.5 1.4 1.1-2 3.4-1.7-.7c-.5.4-1 .7-1.6.9L15.2 20h-4l-.3-1.8c-.6-.2-1.1-.5-1.6-.9l-1.7.7-2-3.4L7 13.5a7 7 0 0 1 0-3L5.6 9.4l2-3.4 1.7.7c.5-.4 1-.7 1.6-.9L11.2 4h4l.3 1.8c.6.2 1.1.5 1.6.9l1.7-.7 2 3.4-1.4 1.1a7 7 0 0 1 0 3Z"/></svg></span><div><b>Admin Settings</b><small>Profile and password</small></div><i>→</i></a>
  </section>
</main></body></html>
