<div class="logo">
  <span class="logo-mark" aria-hidden="true"><svg viewBox="0 0 24 24"><path d="M12 3 4 7l8 4 6-3v5h2V7L12 3Zm-5 8.5V15c0 2.1 2.2 3.5 5 3.5s5-1.4 5-3.5v-3.5l-5 2.5-5-2.5Z"/></svg></span>
  <span>Student<br>Management</span>
</div>

<div class="nav-label">MAIN</div>
<a class="nav" href="dashboard"><span class="nav-icon" aria-hidden="true"><svg viewBox="0 0 24 24"><path d="M4 10.5 12 4l8 6.5V20h-6v-5h-4v5H4v-9.5Z"/></svg></span><span>Dashboard</span></a>
<a class="nav" href="students"><span class="nav-icon" aria-hidden="true"><svg viewBox="0 0 24 24"><path d="M16 20v-1.5c0-2.2-2-4-4.5-4S7 16.3 7 18.5V20h9ZM11.5 12a3 3 0 1 0 0-6 3 3 0 0 0 0 6Zm7.2 7.8v-1.1c0-1.7-1-3.2-2.6-4.1.6-.2 1.2-.3 1.9-.3 2.2 0 4 1.5 4 3.4V20h-3.3Z"/></svg></span><span>Students</span></a>
<a class="nav" href="add-student"><span class="nav-icon" aria-hidden="true"><svg viewBox="0 0 24 24"><path d="M11 5h2v6h6v2h-6v6h-2v-6H5v-2h6V5Z"/></svg></span><span>Add Student</span></a>

<div class="nav-label">ACADEMICS</div>
<a class="nav" href="marks"><span class="nav-icon" aria-hidden="true"><svg viewBox="0 0 24 24"><path d="M5 4h14a2 2 0 0 1 2 2v12a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V6a2 2 0 0 1 2-2Zm2 4v2h10V8H7Zm0 4v2h7v-2H7Zm0 4v1h4v-1H7Z"/></svg></span><span>Marks</span></a>
<a class="nav" href="marksheet"><span class="nav-icon" aria-hidden="true"><svg viewBox="0 0 24 24"><path d="M6 3h9l4 4v14H6a2 2 0 0 1-2-2V5c0-1.1.9-2 2-2Zm8 1.5V8h3.5L14 4.5ZM8 11h8V9H8v2Zm0 4h8v-2H8v2Zm0 4h5v-2H8v2Z"/></svg></span><span>Marksheet</span></a>
<a class="nav" href="courses"><span class="nav-icon" aria-hidden="true"><svg viewBox="0 0 24 24"><path d="M4 5a2 2 0 0 1 2-2h13v15H6a2 2 0 0 0-2 2V5Zm2 0v11h11V5H6Zm-2 15c0-1.1.9-2 2-2h13v2H6a2 2 0 0 1-2 2v-2Z"/></svg></span><span>Courses</span></a>

<div class="nav-label">MANAGEMENT</div>
<a class="nav" href="register-student"><span class="nav-icon" aria-hidden="true"><svg viewBox="0 0 24 24"><path d="M12 2a7 7 0 0 1 7 7c0 4.8-7 13-7 13S5 13.8 5 9a7 7 0 0 1 7-7Zm0 10.2A3.2 3.2 0 1 0 12 5.8a3.2 3.2 0 0 0 0 6.4Z"/></svg></span><span>Public Registration</span></a>
<a class="nav" href="reports"><span class="nav-icon" aria-hidden="true"><svg viewBox="0 0 24 24"><path d="M4 19h16v2H4a2 2 0 0 1-2-2V5h2v14Zm3-3h3V9H7v7Zm5 0h3V5h-3v11Zm5 0h3v-8h-3v8Z"/></svg></span><span>Reports</span></a>
<a class="nav" href="settings"><span class="nav-icon" aria-hidden="true"><svg viewBox="0 0 24 24"><path d="m19.4 13.5 1.4 1.1-2 3.4-1.7-.7c-.5.4-1 .7-1.6.9L15.2 20h-4l-.3-1.8c-.6-.2-1.1-.5-1.6-.9l-1.7.7-2-3.4L7 13.5a7 7 0 0 1 0-3L5.6 9.4l2-3.4 1.7.7c.5-.4 1-.7 1.6-.9L11.2 4h4l.3 1.8c.6.2 1.1.5 1.6.9l1.7-.7 2 3.4-1.4 1.1a7 7 0 0 1 0 3ZM13.2 15.5A3.5 3.5 0 1 0 13.2 8a3.5 3.5 0 0 0 0 7.5Z"/></svg></span><span>Settings</span></a>

<div class="sidebar-bottom">
  <div class="admin-mini">
    <div class="avatar"><%= session.getAttribute("adminName") != null && !session.getAttribute("adminName").toString().isBlank() ? session.getAttribute("adminName").toString().substring(0,1).toUpperCase() : "A" %></div>
    <div><b><%=session.getAttribute("adminName")%></b><small>Administrator</small></div>
  </div>
  <a class="nav logout" href="logout"><span class="nav-icon" aria-hidden="true"><svg viewBox="0 0 24 24"><path d="M10 4h8a2 2 0 0 1 2 2v3h-2V6h-8v12h8v-3h2v3a2 2 0 0 1-2 2h-8a2 2 0 0 1-2-2V6a2 2 0 0 1 2-2Zm1.5 6 1.4 1.4L11.7 13H21v2h-9.3l1.2 1.6-1.4 1.4-3.5-4 3.5-4Z"/></svg></span><span>Logout</span></a>
</div>

<script>
(function(){var path=window.location.pathname.split('/').pop()||'dashboard';document.querySelectorAll('.sidebar a.nav').forEach(function(a){var href=(a.getAttribute('href')||'').split('/').pop();if(href===path){a.classList.add('active');}})})();
</script>
