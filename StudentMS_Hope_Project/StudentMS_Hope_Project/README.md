# Student Management System — Upgraded v2.0

A Java 17 web application using Servlets, JSP, JDBC, H2 and embedded Tomcat.

## New modules
- Dashboard
- Students
- Add Student
- Marks — add/update marks by student and course
- Marksheet — calculate total, percentage, grade and result
- Courses — add/view courses
- Public Registration
- Reports — summary view
- Settings — change admin display name, username and password
- Logout

## Run
1. Open/import the folder containing `pom.xml` as a Maven project in Eclipse or VS Code.
2. Use Java 17.
3. Run `src/main/java/com/student/Main.java` as **Java Application**.
4. Open: `http://localhost:8081/student-management-system/`
5. Default admin: `admin` / `admin123`

## Notes
- H2 is embedded; database files are created under `data/`.
- The default credentials are only for this learning/prototype project. Production authentication should use hashed passwords and proper security controls.
- Reports are intentionally simple and can be expanded later.
