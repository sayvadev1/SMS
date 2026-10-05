package com.student.model;

public class Student {
    private int studentId, courseId;
    private String firstName, lastName, email, phone, gender, department, city, status;
    public Student() {}
    public Student(int studentId,String firstName,String lastName,String email,String phone,String gender,String department,String city,int courseId,String status){this.studentId=studentId;this.firstName=firstName;this.lastName=lastName;this.email=email;this.phone=phone;this.gender=gender;this.department=department;this.city=city;this.courseId=courseId;this.status=status;}
    public int getStudentId(){return studentId;} public void setStudentId(int v){studentId=v;}
    public int getCourseId(){return courseId;} public void setCourseId(int v){courseId=v;}
    public String getFirstName(){return firstName;} public void setFirstName(String v){firstName=v;}
    public String getLastName(){return lastName;} public void setLastName(String v){lastName=v;}
    public String getEmail(){return email;} public void setEmail(String v){email=v;}
    public String getPhone(){return phone;} public void setPhone(String v){phone=v;}
    public String getGender(){return gender;} public void setGender(String v){gender=v;}
    public String getDepartment(){return department;} public void setDepartment(String v){department=v;}
    public String getCity(){return city;} public void setCity(String v){city=v;}
    public String getStatus(){return status;} public void setStatus(String v){status=v;}
}
